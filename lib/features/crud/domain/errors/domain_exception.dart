class DomainException implements Exception {
  final Object e;
  DomainException(this.e);
  List<Object> get props => [e];
}
