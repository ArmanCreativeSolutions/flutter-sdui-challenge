import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_field_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/file_field_validator.dart';
import 'field_style_parser.dart';

class FileUploadFieldWidget extends StatelessWidget {
  final FormFieldEntity field;
  final List<PickedFileInfo> files;
  final String? errorText;
  final ValueChanged<List<PickedFileInfo>> onChanged;

  const FileUploadFieldWidget({
    super.key,
    required this.field,
    required this.files,
    required this.onChanged,
    this.errorText,
  });

  String? _extFromName(String fileName) {
    final dot = fileName.lastIndexOf('.');
    if (dot == -1 || dot == fileName.length - 1) return null;
    return fileName.substring(dot + 1).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    final props = field.props;
    final multiple = props is FileFieldPropsEntity ? props.multiple : false;

    return Padding(
      padding: FieldStyleParser.margin(field.style),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: field.label + (field.required ? ' *' : ''),
          errorText: errorText,
          border: OutlineInputBorder(
            borderRadius: FieldStyleParser.borderRadius(field.style),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final file in files)
              Chip(
                label: Text(file.name, overflow: TextOverflow.ellipsis),
                onDeleted: () =>
                    onChanged(files.where((f) => f != file).toList()),
              ),
            TextButton.icon(
              onPressed: () => _pickFiles(multiple),
              icon: const Icon(Icons.upload_file),
              label: Text(
                files.isEmpty
                    ? 'Choose file${multiple ? 's' : ''}'
                    : 'Add more',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickFiles(bool multiple) async {
    List<PickedFileInfo> picked = [];

    if (multiple) {
      final multipleResult = await FilePickerPlatform.instance.pickFiles();
      if (multipleResult.isEmpty) return;

      for (final f in multipleResult) {
        final bytes = await f.readAsBytes();
        picked.add(
          PickedFileInfo(
            name: f.name,
            sizeInBytes: bytes.lengthInBytes,
            extension: _extFromName(f.name) ?? '',
            path: f.path,
            bytes: bytes,
          ),
        );
      }

      // Multile files
    } else {
      final result = await FilePickerPlatform.instance.pickFile();
      if (result == null) return;

      final bytes = await result.readAsBytes();
      picked.add(
        PickedFileInfo(
          name: result.name,
          sizeInBytes: bytes.lengthInBytes,
          extension: _extFromName(result.name) ?? '',
          path: result.path,
          bytes: bytes,
        ),
      );
      // Single file
    }

    onChanged(multiple ? [...files, ...picked] : picked);
  }
}
