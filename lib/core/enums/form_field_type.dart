enum FormFieldType {
  input,
  select,
  file,
  textarea,
  unknown;

  factory FormFieldType.fromJson(String? raw) {
    switch (raw) {
      case 'input':
        return FormFieldType.input;
      case 'select':
        return FormFieldType.select;
      case 'file':
        return FormFieldType.file;
      case 'textarea':
        return FormFieldType.textarea;
      default:
        return FormFieldType.unknown;
    }
  }

  String toJson() => name;
}

enum InputVariant {
  text,
  number,
  unknown;

  factory InputVariant.fromJson(String? raw) {
    switch (raw) {
      case 'text':
        return InputVariant.text;
      case 'number':
        return InputVariant.number;
      default:
        return InputVariant.unknown;
    }
  }

  String toJson() => name;
}
