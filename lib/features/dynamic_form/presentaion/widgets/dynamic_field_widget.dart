import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/enums/form_field_type.dart';
import '../../domain/entities/form_field_entity.dart';
import '../../domain/validators/file_field_validator.dart';
import '../bloc/form_bloc.dart';
import '../bloc/form_event.dart';
import '../bloc/form_state.dart';
import 'file_upload_field_widget.dart';
import 'select_field_widget.dart';
import 'text_input_field_widget.dart';

class DynamicFieldWidget extends StatelessWidget {
  final FormFieldEntity field;

  const DynamicFieldWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBloc, FormViewState>(
      buildWhen: (previous, current) =>
          previous.values[field.name] != current.values[field.name] ||
          previous.fileValues[field.name] != current.fileValues[field.name] ||
          previous.fieldErrors[field.name] != current.fieldErrors[field.name],
      builder: (context, state) {
        final bloc = context.read<FormBloc>();
        final error = state.fieldErrors[field.name];

        switch (field.type) {
          case FormFieldType.input:
          case FormFieldType.textarea:
            return TextInputFieldWidget(
              field: field,
              errorText: error,
              onChanged: (value) => bloc.add(
                FormEvent.fieldValueChanged(field: field, value: value),
              ),
            );
          case FormFieldType.select:
            return SelectFieldWidget(
              field: field,
              value: state.values[field.name] as String?,
              errorText: error,
              onChanged: (value) => bloc.add(
                FormEvent.fieldValueChanged(field: field, value: value),
              ),
            );
          case FormFieldType.file:
            return FileUploadFieldWidget(
              field: field,
              files: state.fileValues[field.name] ?? const <PickedFileInfo>[],
              errorText: error,
              onChanged: (files) => bloc.add(
                FormEvent.fieldFilesChanged(field: field, files: files),
              ),
            );
          case FormFieldType.unknown:
            // Unknown field types fail soft: the rest of the form
            // keeps working even if the backend adds a type the app
            // doesn't understand yet.
            return const SizedBox.shrink();
        }
      },
    );
  }
}
