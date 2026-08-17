import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_style_entity.freezed.dart';

@freezed
sealed class FieldStyleEntity with _$FieldStyleEntity {
  const factory FieldStyleEntity({
    String? borderRadius,
    String? margin,
    String? padding,
    String? color,
  }) = _FieldStyleEntity;

  static const empty = FieldStyleEntity();
}
