import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/select_field_validator.dart';

void main() {
  const validator = SelectFieldValidator();

  test('requires a selection when required', () {
    expect(validator.validate(null, required: true), isNotNull);
    expect(validator.validate('', required: true), isNotNull);
  });

  test('allows empty selection when optional', () {
    expect(validator.validate(null, required: false), isNull);
  });

  test('accepts a selected value', () {
    expect(validator.validate('بنزین', required: true), isNull);
  });
}
