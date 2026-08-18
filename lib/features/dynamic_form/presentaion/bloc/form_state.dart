import 'package:flutter_sdui_challenge/core/enums/form_status.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_schema_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/file_field_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_state.freezed.dart';

@freezed
sealed class FormViewState with _$FormViewState {
  const FormViewState._();

  const factory FormViewState({
    @Default(FormStatus.initial) FormStatus status,
    FormSchemaEntity? schema,
    @Default({}) Map<String, dynamic> values,
    @Default({}) Map<String, List<PickedFileInfo>> fileValues,
    @Default({}) Map<String, String> fieldErrors,
    String? schemaErrorMessage,
    String? submitErrorMessage,
  }) = _FormViewState;

  bool get isLoading => status == FormStatus.loadingSchema;
  bool get isSubmitting => status == FormStatus.submitting;
  bool get hasSchema => schema != null;
}
