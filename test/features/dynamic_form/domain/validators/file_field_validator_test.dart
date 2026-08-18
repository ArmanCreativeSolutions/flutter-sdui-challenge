import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_props_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/validators/file_field_validator.dart';

void main() {
  const props = FieldPropsEntity.file(
    accept: 'image/*',
    maxSize: '5MB',
    multiple: true,
  );
  final validator = FileFieldValidator(props as FileFieldPropsEntity);

  test('requires at least one file when required', () {
    expect(validator.validate(const [], required: true), isNotNull);
  });

  test('rejects a file over the max size', () {
    final files = [
      const PickedFileInfo(name: 'big.png', sizeInBytes: 10 * 1024 * 1024, extension: 'png'),
    ];
    expect(validator.validate(files, required: true), contains('exceeds'));
  });

  test('rejects an unsupported extension for image/* accept', () {
    final files = [
      const PickedFileInfo(name: 'doc.pdf', sizeInBytes: 1024, extension: 'pdf'),
    ];
    expect(validator.validate(files, required: true), contains('unsupported'));
  });

  test('accepts a valid image within size limits', () {
    final files = [
      const PickedFileInfo(name: 'car.png', sizeInBytes: 1024 * 1024, extension: 'png'),
    ];
    expect(validator.validate(files, required: true), isNull);
  });

  test('rejects multiple files when multiple is false', () {
    const singleProps = FieldPropsEntity.file(multiple: false);
    final singleValidator = FileFieldValidator(singleProps as FileFieldPropsEntity);
    final files = [
      const PickedFileInfo(name: 'a.png', sizeInBytes: 100, extension: 'png'),
      const PickedFileInfo(name: 'b.png', sizeInBytes: 100, extension: 'png'),
    ];
    expect(singleValidator.validate(files, required: true), contains('Only one file'));
  });
}
