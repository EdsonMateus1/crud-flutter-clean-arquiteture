import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // procurar o nome disso
  Failure([List properties = const <dynamic>[]]);
}

class ServeFailure extends Failure {
  @override
  List<Object> get props => null;
}

class CacheFailure extends Failure {
  @override
  List<Object> get props => null;
}
