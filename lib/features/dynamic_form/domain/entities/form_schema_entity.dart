import 'package:freezed_annotation/freezed_annotation.dart';
import 'form_field_entity.dart';

part 'form_schema_entity.freezed.dart';

@freezed
sealed class FormSchemaEntity with _$FormSchemaEntity {
  const factory FormSchemaEntity({required List<FormFieldEntity> fields}) =
      _FormSchemaEntity;
}
