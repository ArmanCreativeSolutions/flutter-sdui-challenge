class AppConstants {
  AppConstants._();

  static const String formSchemaAssetPath = 'assets/form_schema.json';

  static const String apiBaseUrl = 'https://api.server.com';
  static const String getFormEndpoint = '/form-schema';
  static const String submitFormEndpoint = '/form-submit';

  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 15);
}
