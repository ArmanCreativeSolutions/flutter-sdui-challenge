import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_field_entity.dart';

import 'file_field_validator.dart';
import 'select_field_validator.dart';
import 'text_field_validator.dart';

class FieldValidatorFactory {
  const FieldValidatorFactory._();

  static Object? validatorFor(FormFieldEntity field) {
    switch (field.type) {
      case FormFieldType.input:
      case FormFieldType.textarea:
        final props = field.props;
        if (props is TextFieldPropsEntity) return TextFieldValidator(props);
        return const TextFieldValidator(
          TextFieldPropsEntity(variant: InputVariant.text),
        );
      case FormFieldType.select:
        return const SelectFieldValidator();
      case FormFieldType.file:
        final props = field.props;
        if (props is FileFieldPropsEntity) return FileFieldValidator(props);
        return null;
      case FormFieldType.unknown:
        return null;
    }
  }
}
