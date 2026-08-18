import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'field_option_model.dart';

part 'field_props_model.freezed.dart';

@freezed
sealed class FieldPropsModel with _$FieldPropsModel {
  const FieldPropsModel._();

  const factory FieldPropsModel.text({
    required InputVariant variant,
    String? placeholder,
    String? color,
    String? size,
    int? minLength,
    int? maxLength,
    num? min,
    num? max,
  }) = TextFieldPropsModel;

  const factory FieldPropsModel.select({
    required List<FieldOptionModel> options,
  }) = SelectFieldPropsModel;

  const factory FieldPropsModel.textarea({
    String? placeholder,
    int? rows,
    int? cols,
  }) = TextareaFieldPropsModel;

  const factory FieldPropsModel.file({
    String? accept,
    String? maxSize,
    @Default(false) bool multiple,
  }) = FileFieldPropsModel;

  const factory FieldPropsModel.unknown() = UnknownFieldPropsModel;

  factory FieldPropsModel.fromJson(
    Map<String, dynamic> json,
    FormFieldType fieldType,
  ) {
    switch (fieldType) {
      case FormFieldType.input:
        return FieldPropsModel.text(
          variant: InputVariant.fromJson(json['type'] as String?),
          placeholder: json['placeholder'] as String?,
          color: json['color'] as String?,
          size: json['size'] as String?,
          minLength: (json['minLength'] as num?)?.toInt(),
          maxLength: (json['maxLength'] as num?)?.toInt(),
          min: _numFrom(json['min']),
          max: _numFrom(json['max']),
        );
      case FormFieldType.select:
        final rawOptions = (json['options'] as List?) ?? const [];
        return FieldPropsModel.select(
          options: rawOptions
              .map((e) => FieldOptionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
      case FormFieldType.textarea:
        return FieldPropsModel.textarea(
          placeholder: json['placeholder'] as String?,
          rows: (json['rows'] as num?)?.toInt(),
          cols: (json['cols'] as num?)?.toInt(),
        );
      case FormFieldType.file:
        return FieldPropsModel.file(
          accept: json['accept'] as String?,
          maxSize: json['maxSize'] as String?,
          multiple: json['multiple'] as bool? ?? false,
        );
      case FormFieldType.unknown:
        return const FieldPropsModel.unknown();
    }
  }

  static num? _numFrom(dynamic raw) {
    if (raw == null) return null;
    if (raw is num) return raw;
    if (raw is String) return num.tryParse(raw);
    return null;
  }

  FieldPropsEntity toEntity() => switch (this) {
        TextFieldPropsModel(
          :final variant,
          :final placeholder,
          :final color,
          :final size,
          :final minLength,
          :final maxLength,
          :final min,
          :final max,
        ) =>
          FieldPropsEntity.text(
            variant: variant,
            placeholder: placeholder,
            color: color,
            size: size,
            minLength: minLength,
            maxLength: maxLength,
            min: min,
            max: max,
          ),
        SelectFieldPropsModel(:final options) => FieldPropsEntity.select(
            options: options.map((o) => o.toEntity()).toList(),
          ),
        TextareaFieldPropsModel(:final placeholder, :final rows, :final cols) =>
          FieldPropsEntity.textarea(placeholder: placeholder, rows: rows, cols: cols),
        FileFieldPropsModel(:final accept, :final maxSize, :final multiple) =>
          FieldPropsEntity.file(accept: accept, maxSize: maxSize, multiple: multiple),
        UnknownFieldPropsModel() => const FieldPropsEntity.unknown(),
      };
}
