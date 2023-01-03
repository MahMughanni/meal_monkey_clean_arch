class LocalException implements Exception {
  final String errorMessage;

  LocalException({this.errorMessage = 'error'});
}
