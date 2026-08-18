import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/datasources/form_local_asset_data_source.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/datasources/form_remote_data_source_mock.dart';
import '../../../../fixtures/fixture_reader.dart';

class MockLocalAssetDataSource extends Mock implements FormLocalAssetDataSource {}

void main() {
  late MockLocalAssetDataSource localAssetDataSource;
  late FormRemoteDataSourceMock dataSource;

  setUp(() {
    localAssetDataSource = MockLocalAssetDataSource();
    dataSource = FormRemoteDataSourceMock(
      localAssetDataSource: localAssetDataSource,
      simulatedLatency: Duration.zero, // keep tests fast
    );
  });

  test('getFormSchema delegates to the local asset data source and parses it', () async {
    final json = jsonDecode(fixture('form_schema_fixture.json')) as Map<String, dynamic>;
    when(() => localAssetDataSource.loadFormSchemaJson()).thenAnswer((_) async => json);

    final result = await dataSource.getFormSchema();

    expect(result.fields, hasLength(8));
    verify(() => localAssetDataSource.loadFormSchemaJson()).called(1);
  });

  test('submitForm completes without throwing', () async {
    await expectLater(dataSource.submitForm({'brand': 'Toyota'}), completes);
  });
}
