

import 'package:flutter_sdui_challenge/features/dynamic_form/data/models/form_schema_model.dart';

abstract class FormRemoteDataSource {
  Future<FormSchemaModel> getFormSchema();
  Future<void> submitForm(Map<String, dynamic> formData);
}
