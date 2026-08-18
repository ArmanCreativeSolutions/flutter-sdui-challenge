import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sdui_challenge/core/enums/form_status.dart';
import 'package:flutter_sdui_challenge/core/error/failures.dart';
import 'package:flutter_sdui_challenge/core/usecases/usecases.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_field_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/usecases/get_form_schema.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/usecases/submit_form.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/field_validator_factory.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/file_field_validator.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/select_field_validator.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/text_field_validator.dart';
import 'form_event.dart';
import 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormViewState> {
  final GetFormSchema getFormSchema;
  final SubmitForm submitForm;

  FormBloc({required this.getFormSchema, required this.submitForm})
    : super(const FormViewState()) {
    on<FormSchemaRequested>(_onSchemaRequested);
    on<FieldValueChanged>(_onFieldValueChanged);
    on<FieldFilesChanged>(_onFieldFilesChanged);
    on<FormSubmitted>(_onFormSubmitted);
  }

  Future<void> _onSchemaRequested(
    FormSchemaRequested event,
    Emitter<FormViewState> emit,
  ) async {
    emit(
      state.copyWith(
        status: FormStatus.loadingSchema,
        schemaErrorMessage: null,
      ),
    );
    final result = await getFormSchema(const NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: FormStatus.schemaError,
          schemaErrorMessage: _messageFor(failure),
        ),
      ),
      (schema) => emit(
        state.copyWith(
          status: FormStatus.ready,
          schema: schema,
          values: {for (final f in schema.fields) f.name: _initialValueFor(f)},
        ),
      ),
    );
  }

  void _onFieldValueChanged(
    FieldValueChanged event,
    Emitter<FormViewState> emit,
  ) {
    final newValues = Map<String, dynamic>.from(state.values)
      ..[event.field.name] = event.value;
    final newErrors = Map<String, String>.from(state.fieldErrors);
    final error = _validate(event.field, event.value);
    if (error == null) {
      newErrors.remove(event.field.name);
    } else {
      newErrors[event.field.name] = error;
    }
    emit(state.copyWith(values: newValues, fieldErrors: newErrors));
  }

  void _onFieldFilesChanged(
    FieldFilesChanged event,
    Emitter<FormViewState> emit,
  ) {
    final newFiles = Map<String, List<PickedFileInfo>>.from(state.fileValues)
      ..[event.field.name] = event.files;
    final newErrors = Map<String, String>.from(state.fieldErrors);
    final validator = FieldValidatorFactory.validatorFor(event.field);
    final error = validator is FileFieldValidator
        ? validator.validate(event.files, required: event.field.required)
        : null;
    if (error == null) {
      newErrors.remove(event.field.name);
    } else {
      newErrors[event.field.name] = error;
    }
    emit(state.copyWith(fileValues: newFiles, fieldErrors: newErrors));
  }

  Future<void> _onFormSubmitted(
    FormSubmitted event,
    Emitter<FormViewState> emit,
  ) async {
    final schema = state.schema;
    if (schema == null) return;

    final errors = <String, String>{};
    for (final field in schema.fields) {
      final validator = FieldValidatorFactory.validatorFor(field);
      String? error;
      if (validator is TextFieldValidator) {
        error = validator.validate(
          (state.values[field.name] as String?) ?? '',
          required: field.required,
        );
      } else if (validator is SelectFieldValidator) {
        error = validator.validate(
          state.values[field.name] as String?,
          required: field.required,
        );
      } else if (validator is FileFieldValidator) {
        error = validator.validate(
          state.fileValues[field.name] ?? const [],
          required: field.required,
        );
      }
      if (error != null) errors[field.name] = error;
    }

    if (errors.isNotEmpty) {
      emit(state.copyWith(fieldErrors: errors));
      return;
    }

    emit(
      state.copyWith(status: FormStatus.submitting, submitErrorMessage: null),
    );

    final payload = <String, dynamic>{...state.values, ...state.fileValues};
    final result = await submitForm(SubmitFormParams(payload));
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: FormStatus.submitError,
          submitErrorMessage: _messageFor(failure),
        ),
      ),
      (_) => emit(state.copyWith(status: FormStatus.submitSuccess)),
    );
  }

  dynamic _initialValueFor(FormFieldEntity field) => switch (field.props) {
    SelectFieldPropsEntity() => null,
    _ => '',
  };

  String? _validate(FormFieldEntity field, dynamic value) {
    final validator = FieldValidatorFactory.validatorFor(field);
    if (validator is TextFieldValidator) {
      return validator.validate(
        (value as String?) ?? '',
        required: field.required,
      );
    }
    if (validator is SelectFieldValidator) {
      return validator.validate(value as String?, required: field.required);
    }
    return null;
  }

  String _messageFor(Failure failure) => failure.message;
}
