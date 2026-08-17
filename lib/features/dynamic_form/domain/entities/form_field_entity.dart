import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'field_props_entity.dart';
import 'field_style_entity.dart';

part 'form_field_entity.freezed.dart';

@freezed
sealed class FormFieldEntity with _$FormFieldEntity {
  const factory FormFieldEntity({
    required String name,
    required String label,
    required FormFieldType type,
    required FieldPropsEntity props,
    @Default(false) bool required,
    @Default(FieldStyleEntity.empty) FieldStyleEntity style,
  }) = _FormFieldEntity;
}
