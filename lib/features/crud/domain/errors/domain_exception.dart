class DomainException {
  final Object e;
  DomainException(this.e);
  Object get error => e;
}
