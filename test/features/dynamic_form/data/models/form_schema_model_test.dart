import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/models/field_props_model.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/models/form_schema_model.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  group('FormSchemaModel.fromJson', () {
    late Map<String, dynamic> json;

    setUp(() {
      json = jsonDecode(fixture('form_schema_fixture.json')) as Map<String, dynamic>;
    });

    test('parses every field in the fixture', () {
      final model = FormSchemaModel.fromJson(json);
      expect(model.fields, hasLength(8));
    });

    test('parses a text input field with correct type and props', () {
      final model = FormSchemaModel.fromJson(json);
      final brand = model.fields.firstWhere((f) => f.name == 'brand');

      expect(brand.type, FormFieldType.input);
      expect(brand.isRequired, isTrue);
      final props = brand.props as TextFieldPropsModel;
      expect(props.variant, InputVariant.text);
      expect(props.minLength, 2);
      expect(props.maxLength, 30);
    });

    test('parses a select field with its options', () {
      final model = FormSchemaModel.fromJson(json);
      final fuel = model.fields.firstWhere((f) => f.name == 'fuel_type');

      expect(fuel.type, FormFieldType.select);
      final props = fuel.props as SelectFieldPropsModel;
      expect(props.options, hasLength(4));
      expect(props.options.first.value, 'بنزین');
    });

    test('parses a file field with accept/maxSize/multiple', () {
      final model = FormSchemaModel.fromJson(json);
      final images = model.fields.firstWhere((f) => f.name == 'car_images');

      expect(images.type, FormFieldType.file);
      final props = images.props as FileFieldPropsModel;
      expect(props.accept, 'image/*');
      expect(props.maxSize, '5MB');
      expect(props.multiple, isTrue);
    });

    test('toEntity() produces an entity list of the same length', () {
      final model = FormSchemaModel.fromJson(json);
      final entity = model.toEntity();
      expect(entity.fields, hasLength(model.fields.length));
    });

    test('gracefully falls back to unknown for an unrecognised field type', () {
      final malformed = {
        'fields': [
          {'name': 'x', 'label': 'X', 'type': 'carousel', 'props': {}},
        ],
      };
      final model = FormSchemaModel.fromJson(malformed);
      expect(model.fields.single.type, FormFieldType.unknown);
    });
  });
}
