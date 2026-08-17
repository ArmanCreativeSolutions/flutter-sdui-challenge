import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_option_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_option_model.freezed.dart';
part 'field_option_model.g.dart';

@freezed
sealed class FieldOptionModel with _$FieldOptionModel {
  const FieldOptionModel._();

  const factory FieldOptionModel({
    required String label,
    required String value,
  }) = _FieldOptionModel;

  factory FieldOptionModel.fromJson(Map<String, dynamic> json) =>
      _$FieldOptionModelFromJson(json);

  FieldOptionEntity toEntity() => FieldOptionEntity(label: label, value: value);
}
