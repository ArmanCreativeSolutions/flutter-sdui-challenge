import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = 'No cached data available']);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Something went wrong on the server']);
}

class ParsingFailure extends Failure {
  const ParsingFailure([super.message = 'Could not parse form schema']);
}

class ValidationFailure extends Failure {
  final Map<String, String> fieldErrors;

  const ValidationFailure(this.fieldErrors)
    : super('One or more fields are invalid');

  @override
  List<Object?> get props => [message, fieldErrors];
}
