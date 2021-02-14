class ServeException implements Exception {
  final String message;
  const ServeException(this.message);
  List<Object> get props => [message];
}

class CacheException implements Exception {
  final String message;
  const CacheException(this.message);
  List<Object> get props => [message];
}
