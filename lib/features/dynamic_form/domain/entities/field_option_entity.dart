import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_option_entity.freezed.dart';

@freezed
sealed class FieldOptionEntity with _$FieldOptionEntity {
  const factory FieldOptionEntity({
    required String label,
    required String value,
  }) = _FieldOptionEntity;
}
