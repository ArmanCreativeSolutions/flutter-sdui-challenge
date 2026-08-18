import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_style_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_field_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'field_props_model.dart';
import 'field_style_model.dart';

part 'form_field_model.freezed.dart';

@freezed
sealed class FormFieldModel with _$FormFieldModel {
  const FormFieldModel._();

  const factory FormFieldModel({
    required String name,
    required String label,
    required FormFieldType type,
    required FieldPropsModel props,
    @JsonKey(name: 'required', defaultValue: false) required bool isRequired,
    FieldStyleModel? style,
  }) = _FormFieldModel;

  factory FormFieldModel.fromJson(Map<String, dynamic> json) {
    final type = FormFieldType.fromJson(json['type'] as String?);
    return FormFieldModel(
      name: json['name'] as String? ?? '',
      label: json['label'] as String? ?? '',
      type: type,
      isRequired: json['required'] as bool? ?? false,
      props: FieldPropsModel.fromJson(
        json['props'] is Map<String, dynamic> ? json['props'] : {},
        type,
      ),
      style: json['style'] == null
          ? null
          : FieldStyleModel.fromJson(json['style'] as Map<String, dynamic>),
    );
  }

  FormFieldEntity toEntity() => FormFieldEntity(
    name: name,
    label: label,
    type: type,
    props: props.toEntity(),
    required: isRequired,
    style: style?.toEntity() ?? FieldStyleEntity.empty,
  );
}
