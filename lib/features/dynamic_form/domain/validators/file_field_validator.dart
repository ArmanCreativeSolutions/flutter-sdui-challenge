import '../entities/field_props_entity.dart';
import 'field_validator.dart';

class FileFieldValidator implements FieldValidator<List<PickedFileInfo>> {
  final FileFieldPropsEntity props;
  const FileFieldValidator(this.props);

  @override
  String? validate(List<PickedFileInfo> value, {required bool required}) {
    if (required && value.isEmpty) {
      return 'Please attach a file';
    }
    if (!props.multiple && value.length > 1) {
      return 'Only one file is allowed';
    }

    final maxBytes = _parseMaxSize(props.maxSize);
    for (final file in value) {
      if (maxBytes != null && file.sizeInBytes > maxBytes) {
        return '${file.name} exceeds the ${props.maxSize} limit';
      }
      if (!_matchesAccept(file.extension, props.accept)) {
        return '${file.name} has an unsupported format';
      }
    }
    return null;
  }

  int? _parseMaxSize(String? raw) {
    if (raw == null) return null;
    final match = RegExp(r'^(\d+(?:\.\d+)?)\s*(KB|MB|GB)?$', caseSensitive: false)
        .firstMatch(raw.trim());
    if (match == null) return null;
    final value = double.tryParse(match.group(1)!) ?? 0;
    final unit = (match.group(2) ?? 'B').toUpperCase();
    final multiplier = switch (unit) {
      'KB' => 1024,
      'MB' => 1024 * 1024,
      'GB' => 1024 * 1024 * 1024,
      _ => 1,
    };
    return (value * multiplier).round();
  }

  bool _matchesAccept(String extension, String? accept) {
    if (accept == null || accept.isEmpty || accept == '*') return true;
    
    if (accept.contains('/')) {
      final category = accept.split('/').first; // "image"
      const imageExts = {'png', 'jpg', 'jpeg', 'gif', 'webp', 'bmp'};
      if (category == 'image') return imageExts.contains(extension.toLowerCase());
      return true;
    }
    return accept
        .split(',')
        .map((e) => e.trim().replaceFirst('.', '').toLowerCase())
        .contains(extension.toLowerCase());
  }
}

class PickedFileInfo {
  final String name;
  final int sizeInBytes;
  final String extension;
  final String? path;
  final List<int>? bytes;

  const PickedFileInfo({
    required this.name,
    required this.sizeInBytes,
    required this.extension,
    this.path,
    this.bytes,
  });
}
