import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_sdui_challenge/core/enums/form_status.dart';
import 'package:flutter_sdui_challenge/core/usecases/usecases.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/bloc/form_bloc.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/bloc/form_event.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/bloc/form_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'package:flutter_sdui_challenge/core/error/failures.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_field_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_schema_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/usecases/get_form_schema.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/usecases/submit_form.dart';

class MockGetFormSchema extends Mock implements GetFormSchema {}

class MockSubmitForm extends Mock implements SubmitForm {}

void main() {
  late MockGetFormSchema getFormSchema;
  late MockSubmitForm submitForm;
  late FormBloc bloc;

  final tField = FormFieldEntity(
    name: 'brand',
    label: 'Brand',
    type: FormFieldType.input,
    required: true,
    props: const FieldPropsEntity.text(
      variant: InputVariant.text,
      minLength: 2,
    ),
  );
  final tSchema = FormSchemaEntity(fields: [tField]);

  setUpAll(() {
    registerFallbackValue(const NoParams());
    registerFallbackValue(const SubmitFormParams({}));
  });

  setUp(() {
    getFormSchema = MockGetFormSchema();
    submitForm = MockSubmitForm();
    bloc = FormBloc(getFormSchema: getFormSchema, submitForm: submitForm);
  });

  tearDown(() => bloc.close());

  group('FormEvent.schemaRequested', () {
    blocTest<FormBloc, FormViewState>(
      'emits [loadingSchema, ready] with initial values on success',
      build: () {
        when(
          () => getFormSchema(any()),
        ).thenAnswer((_) async => Right(tSchema));
        return bloc;
      },
      act: (b) => b.add(const FormEvent.schemaRequested()),
      expect: () => [
        predicate<FormViewState>((s) => s.status == FormStatus.loadingSchema),
        predicate<FormViewState>(
          (s) => s.status == FormStatus.ready && s.values['brand'] == '',
        ),
      ],
    );

    blocTest<FormBloc, FormViewState>(
      'emits [loadingSchema, schemaError] on failure',
      build: () {
        when(
          () => getFormSchema(any()),
        ).thenAnswer((_) async => const Left(ServerFailure('boom')));
        return bloc;
      },
      act: (b) => b.add(const FormEvent.schemaRequested()),
      expect: () => [
        predicate<FormViewState>((s) => s.status == FormStatus.loadingSchema),
        predicate<FormViewState>(
          (s) =>
              s.status == FormStatus.schemaError &&
              s.schemaErrorMessage == 'boom',
        ),
      ],
    );
  });

  group('FormEvent.fieldValueChanged', () {
    blocTest<FormBloc, FormViewState>(
      'validates on change and records a field error for a too-short value',
      build: () => bloc,
      seed: () => FormViewState(schema: tSchema, values: const {'brand': ''}),
      act: (b) => b.add(FormEvent.fieldValueChanged(field: tField, value: 'a')),
      expect: () => [
        predicate<FormViewState>(
          (s) => s.fieldErrors['brand'] != null && s.values['brand'] == 'a',
        ),
      ],
    );

    blocTest<FormBloc, FormViewState>(
      'clears the field error once the value becomes valid',
      build: () => bloc,
      seed: () => FormViewState(
        schema: tSchema,
        values: const {'brand': 'a'},
        fieldErrors: const {'brand': 'too short'},
      ),
      act: (b) =>
          b.add(FormEvent.fieldValueChanged(field: tField, value: 'abcdef')),
      expect: () => [
        predicate<FormViewState>((s) => !s.fieldErrors.containsKey('brand')),
      ],
    );
  });

  group('FormEvent.formSubmitted', () {
    blocTest<FormBloc, FormViewState>(
      'blocks submission and surfaces errors when a required field is invalid',
      build: () => bloc,
      seed: () => FormViewState(schema: tSchema, values: const {'brand': ''}),
      act: (b) => b.add(const FormEvent.formSubmitted()),
      expect: () => [
        predicate<FormViewState>((s) => s.fieldErrors['brand'] != null),
      ],
      verify: (_) => verifyNever(() => submitForm(any())),
    );

    blocTest<FormBloc, FormViewState>(
      'emits submitting then submitSuccess when validation passes',
      build: () {
        when(
          () => submitForm(any()),
        ).thenAnswer((_) async => const Right(unit));
        return bloc;
      },
      seed: () =>
          FormViewState(schema: tSchema, values: const {'brand': 'Toyota'}),
      act: (b) => b.add(const FormEvent.formSubmitted()),
      expect: () => [
        predicate<FormViewState>((s) => s.status == FormStatus.submitting),
        predicate<FormViewState>((s) => s.status == FormStatus.submitSuccess),
      ],
    );

    blocTest<FormBloc, FormViewState>(
      'emits submitError when the repository call fails',
      build: () {
        when(
          () => submitForm(any()),
        ).thenAnswer((_) async => const Left(ServerFailure('network down')));
        return bloc;
      },
      seed: () =>
          FormViewState(schema: tSchema, values: const {'brand': 'Toyota'}),
      act: (b) => b.add(const FormEvent.formSubmitted()),
      expect: () => [
        predicate<FormViewState>((s) => s.status == FormStatus.submitting),
        predicate<FormViewState>(
          (s) =>
              s.status == FormStatus.submitError &&
              s.submitErrorMessage == 'network down',
        ),
      ],
    );
  });

  group('FormEvent.fieldFilesChanged', () {
    blocTest<FormBloc, FormViewState>(
      'records an error when a required file field has no files',
      build: () => bloc,
      seed: () {
        final fileField = FormFieldEntity(
          name: 'car_images',
          label: 'Images',
          type: FormFieldType.file,
          required: true,
          props: const FieldPropsEntity.file(accept: 'image/*', multiple: true),
        );
        return FormViewState(schema: FormSchemaEntity(fields: [fileField]));
      },
      act: (b) {
        final fileField = FormFieldEntity(
          name: 'car_images',
          label: 'Images',
          type: FormFieldType.file,
          required: true,
          props: const FieldPropsEntity.file(accept: 'image/*', multiple: true),
        );
        b.add(FormEvent.fieldFilesChanged(field: fileField, files: const []));
      },
      expect: () => [
        predicate<FormViewState>((s) => s.fieldErrors['car_images'] != null),
      ],
    );
  });
}
