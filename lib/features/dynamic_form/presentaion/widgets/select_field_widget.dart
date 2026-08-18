import 'package:flutter/material.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_option_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_field_entity.dart';
import 'field_style_parser.dart';

class SelectFieldWidget extends StatelessWidget {
  final FormFieldEntity field;
  final String? value;
  final String? errorText;
  final ValueChanged<String?> onChanged;

  const SelectFieldWidget({
    super.key,
    required this.field,
    required this.onChanged,
    this.value,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    final props = field.props;
    final List<FieldOptionEntity> options = props is SelectFieldPropsEntity
        ? props.options
        : const <FieldOptionEntity>[];

    return Padding(
      padding: FieldStyleParser.margin(field.style),
      child: DropdownButtonFormField<String>(
        initialValue: value != null && value!.isNotEmpty ? value : null,
        items: [
          for (final option in options)
            DropdownMenuItem(value: option.value, child: Text(option.label)),
        ],
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: field.label + (field.required ? ' *' : ''),
          errorText: errorText,
          contentPadding: FieldStyleParser.padding(field.style),
          border: OutlineInputBorder(
            borderRadius: FieldStyleParser.borderRadius(field.style),
          ),
        ),
      ),
    );
  }
}
