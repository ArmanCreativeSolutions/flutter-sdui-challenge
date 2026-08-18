import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';

import 'field_validator.dart';

class TextFieldValidator implements FieldValidator<String> {
  final TextFieldPropsEntity props;

  const TextFieldValidator(this.props);

  @override
  String? validate(String value, {required bool required}) {
    final trimmed = value.trim();

    if (required && trimmed.isEmpty) {
      return 'This field is required';
    }
    if (trimmed.isEmpty) {
      return null; // optional & empty -> valid
    }

    if (props.variant.name == 'number') {
      final parsed = num.tryParse(trimmed);
      if (parsed == null) return 'Must be a valid number';
      if (props.min != null && parsed < props.min!) {
        return 'Must be at least ${props.min}';
      }
      if (props.max != null && parsed > props.max!) {
        return 'Must be at most ${props.max}';
      }
      return null;
    }

    if (props.minLength != null && trimmed.length < props.minLength!) {
      return 'Must be at least ${props.minLength} characters';
    }
    if (props.maxLength != null && trimmed.length > props.maxLength!) {
      return 'Must be at most ${props.maxLength} characters';
    }
    return null;
  }
}
