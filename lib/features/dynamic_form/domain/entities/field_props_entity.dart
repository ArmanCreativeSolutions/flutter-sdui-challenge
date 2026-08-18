import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'field_option_entity.dart';

part 'field_props_entity.freezed.dart';

@freezed
sealed class FieldPropsEntity with _$FieldPropsEntity {
  const factory FieldPropsEntity.text({
    required InputVariant variant, // text | number
    String? placeholder,
    String? color,
    String? size,
    int? minLength,
    int? maxLength,
    num? min,
    num? max,
  }) = TextFieldPropsEntity;

  const factory FieldPropsEntity.select({
    required List<FieldOptionEntity> options,
  }) = SelectFieldPropsEntity;

  const factory FieldPropsEntity.textarea({
    String? placeholder,
    int? rows,
    int? cols,
  }) = TextareaFieldPropsEntity;

  const factory FieldPropsEntity.file({
    String? accept,
    String? maxSize,
    @Default(false) bool multiple,
  }) = FileFieldPropsEntity;

  const factory FieldPropsEntity.unknown() = UnknownFieldPropsEntity;
}
