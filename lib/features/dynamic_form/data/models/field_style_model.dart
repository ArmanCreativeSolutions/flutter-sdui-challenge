import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_style_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_style_model.freezed.dart';
part 'field_style_model.g.dart';

@freezed
sealed class FieldStyleModel with _$FieldStyleModel {
  const FieldStyleModel._();

  const factory FieldStyleModel({
    String? borderRadius,
    String? margin,
    String? padding,
    String? color,
  }) = _FieldStyleModel;

  factory FieldStyleModel.fromJson(Map<String, dynamic> json) =>
      _$FieldStyleModelFromJson(json);

  FieldStyleEntity toEntity() => FieldStyleEntity(
        borderRadius: borderRadius,
        margin: margin,
        padding: padding,
        color: color,
      );
}
