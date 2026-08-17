import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_sdui_challenge/core/constant/app_constants.dart';
import 'package:flutter_sdui_challenge/core/error/exceptions.dart';

abstract class FormLocalAssetDataSource {
  Future<Map<String, dynamic>> loadFormSchemaJson();
}

class FormLocalAssetDataSourceImpl implements FormLocalAssetDataSource {
  @override
  Future<Map<String, dynamic>> loadFormSchemaJson() async {
    try {
      final raw = await rootBundle.loadString(AppConstants.formSchemaAssetPath);
      return jsonDecode(raw) as Map<String, dynamic>;
    } catch (_) {
      throw const CacheException(message: 'Bundled form_schema.json could not be read');
    }
  }
}
