class ServerException implements Exception {
  final String message;
  final int? statusCode;

  const ServerException({
    this.message = 'Unexpected server error',
    this.statusCode,
  });
}

class CacheException implements Exception {
  final String message;

  const CacheException({this.message = 'Nothing found in cache'});
}
