import 'dart:developer' as developer;
import 'package:flutter_sdui_challenge/features/dynamic_form/data/models/form_schema_model.dart';

import 'form_local_asset_data_source.dart';
import 'form_remote_data_source.dart';

class FormRemoteDataSourceMock implements FormRemoteDataSource {
  final FormLocalAssetDataSource localAssetDataSource;
  final Duration simulatedLatency;

  const FormRemoteDataSourceMock({
    required this.localAssetDataSource,
    this.simulatedLatency = const Duration(milliseconds: 600),
  });

  @override
  Future<FormSchemaModel> getFormSchema() async {
    await Future.delayed(simulatedLatency);
    final json = await localAssetDataSource.loadFormSchemaJson();
    return FormSchemaModel.fromJson(json);
  }

  @override
  Future<void> submitForm(Map<String, dynamic> formData) async {
    await Future.delayed(simulatedLatency);
    developer.log(
      'Mock submit received: $formData',
      name: 'FormRemoteDataSourceMock',
    );
  }
}
