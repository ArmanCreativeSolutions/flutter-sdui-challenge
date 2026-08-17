import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_schema_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'form_field_model.dart';

part 'form_schema_model.freezed.dart';

@freezed
sealed class FormSchemaModel with _$FormSchemaModel {
  const FormSchemaModel._();

  const factory FormSchemaModel({required List<FormFieldModel> fields}) =
      _FormSchemaModel;

  factory FormSchemaModel.fromJson(Map<String, dynamic> json) {
    final rawFields = (json['fields'] as List?) ?? const [];
    return FormSchemaModel(
      fields: rawFields
          .map((e) => FormFieldModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  FormSchemaEntity toEntity() =>
      FormSchemaEntity(fields: fields.map((f) => f.toEntity()).toList());
}
