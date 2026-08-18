import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_field_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/file_field_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_event.freezed.dart';

@freezed
sealed class FormEvent with _$FormEvent {
  /// Fired once when the page mounts (also it fires on "Retry").
  const factory FormEvent.schemaRequested() = FormSchemaRequested;

  const factory FormEvent.fieldValueChanged({
    required FormFieldEntity field,
    required dynamic value,
  }) = FieldValueChanged;

  const factory FormEvent.fieldFilesChanged({
    required FormFieldEntity field,
    required List<PickedFileInfo> files,
  }) = FieldFilesChanged;

  const factory FormEvent.formSubmitted() = FormSubmitted;
}
