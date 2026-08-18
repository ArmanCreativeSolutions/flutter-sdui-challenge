import 'field_validator.dart';

class SelectFieldValidator implements FieldValidator<String?> {
  const SelectFieldValidator();

  @override
  String? validate(String? value, {required bool required}) {
    if (required && (value == null || value.isEmpty)) {
      return 'Please select an option';
    }
    return null;
  }
}
