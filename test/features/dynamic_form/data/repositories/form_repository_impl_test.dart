import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_sdui_challenge/core/enums/form_field_type.dart';
import 'package:flutter_sdui_challenge/core/error/exceptions.dart';
import 'package:flutter_sdui_challenge/core/error/failures.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/datasources/form_remote_data_source.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/models/field_props_model.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/models/form_field_model.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/models/form_schema_model.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/repositories/form_repository_impl.dart';

class MockRemoteDataSource extends Mock implements FormRemoteDataSource {}

void main() {
  late FormRepositoryImpl repository;
  late MockRemoteDataSource remoteDataSource;

  setUp(() {
    remoteDataSource = MockRemoteDataSource();
    repository = FormRepositoryImpl(remoteDataSource: remoteDataSource);
  });

  final tSchemaModel = FormSchemaModel(
    fields: [
      FormFieldModel(
        name: 'brand',
        label: 'Brand',
        type: FormFieldType.input,
        isRequired: true,
        props: const FieldPropsModel.text(variant: InputVariant.text),
      ),
    ],
  );

  group('getFormSchema', () {
    test('returns Right(entity) on success', () async {
      when(
        () => remoteDataSource.getFormSchema(),
      ).thenAnswer((_) async => tSchemaModel);

      final result = await repository.getFormSchema();

      expect(result, isA<Right>());
      result.fold(
        (_) => fail('expected Right'),
        (entity) => expect(entity.fields.single.name, 'brand'),
      );
    });

    test(
      'returns ServerFailure when the data source throws ServerException',
      () async {
        when(
          () => remoteDataSource.getFormSchema(),
        ).thenThrow(const ServerException(message: 'boom'));

        final result = await repository.getFormSchema();

        expect(result, const Left(ServerFailure('boom')));
      },
    );
  });

  group('submitForm', () {
    test('returns Right(unit) on success', () async {
      when(() => remoteDataSource.submitForm(any())).thenAnswer((_) async {});

      final result = await repository.submitForm({'brand': 'Toyota'});

      expect(result, const Right(unit));
    });
  });
}
