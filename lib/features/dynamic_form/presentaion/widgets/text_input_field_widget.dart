import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../domain/entities/field_props_entity.dart';
import '../../domain/entities/form_field_entity.dart';
import 'field_style_parser.dart';

class TextInputFieldWidget extends StatelessWidget {
  final FormFieldEntity field;
  final String? errorText;
  final ValueChanged<String> onChanged;

  const TextInputFieldWidget({
    super.key,
    required this.field,
    required this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    final props = field.props;
    final isNumber =
        props is TextFieldPropsEntity && props.variant.name == 'number';
    final isTextarea = props is TextareaFieldPropsEntity;

    final placeholder = switch (props) {
      TextFieldPropsEntity(:final placeholder) => placeholder,
      TextareaFieldPropsEntity(:final placeholder) => placeholder,
      _ => null,
    };

    return Padding(
      padding: FieldStyleParser.margin(field.style),
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        inputFormatters: isNumber
            ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9.\-]'))]
            : null,
        maxLines: isTextarea
            ? ((props as TextareaFieldPropsEntity).rows ?? 4)
            : 1,
        decoration: InputDecoration(
          labelText: field.label + (field.required ? ' *' : ''),
          hintText: placeholder,
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
