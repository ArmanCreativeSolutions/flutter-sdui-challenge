import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/text_field_validator.dart';

void main() {
  group('TextFieldValidator - text variant', () {
    const props = FieldPropsEntity.text(
      variant: InputVariant.text,
      minLength: 2,
      maxLength: 5,
    );
    final validator = TextFieldValidator(props as TextFieldPropsEntity);

    test('returns error when required and empty', () {
      expect(validator.validate('', required: true), isNotNull);
    });

    test('returns null when optional and empty', () {
      expect(validator.validate('', required: false), isNull);
    });

    test('returns error when shorter than minLength', () {
      expect(validator.validate('a', required: true), contains('at least'));
    });

    test('returns error when longer than maxLength', () {
      expect(validator.validate('abcdef', required: true), contains('at most'));
    });

    test('returns null for a valid value', () {
      expect(validator.validate('abc', required: true), isNull);
    });
  });

  group('TextFieldValidator - number variant', () {
    const props = FieldPropsEntity.text(variant: InputVariant.number, min: 1900, max: 2024);
    final validator = TextFieldValidator(props as TextFieldPropsEntity);

    test('rejects non-numeric input', () {
      expect(validator.validate('abcd', required: true), contains('valid number'));
    });

    test('rejects below min', () {
      expect(validator.validate('1800', required: true), contains('at least'));
    });

    test('rejects above max', () {
      expect(validator.validate('2100', required: true), contains('at most'));
    });

    test('accepts value within range', () {
      expect(validator.validate('2020', required: true), isNull);
    });
  });
}
