import 'package:dio/dio.dart';
import 'package:flutter_sdui_challenge/core/constant/app_constants.dart';
import 'package:flutter_sdui_challenge/core/error/exceptions.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/models/form_schema_model.dart';
import 'form_remote_data_source.dart';

class FormRemoteDataSourceImpl implements FormRemoteDataSource {
  final Dio dio;

  const FormRemoteDataSourceImpl({required this.dio});

  @override
  Future<FormSchemaModel> getFormSchema() async {
    try {
      final response = await dio.get(AppConstants.getFormEndpoint);
      return FormSchemaModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Failed to fetch form schema',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<void> submitForm(Map<String, dynamic> formData) async {
    try {
      final multipartData = <String, dynamic>{};
      for (final entry in formData.entries) {
        final value = entry.value;
        if (value is List<PickedUpload>) {
          multipartData[entry.key] = await Future.wait(
            value.map(
              (f) async =>
                  MultipartFile.fromBytes(f.bytes, filename: f.fileName),
            ),
          );
        } else {
          multipartData[entry.key] = value;
        }
      }

      await dio.post(
        AppConstants.submitFormEndpoint,
        data: FormData.fromMap(multipartData),
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Failed to submit form',
        statusCode: e.response?.statusCode,
      );
    }
  }
}

class PickedUpload {
  final String fileName;
  final List<int> bytes;

  const PickedUpload({required this.fileName, required this.bytes});
}
