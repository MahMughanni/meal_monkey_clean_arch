import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props {
    return [message];
  }
}

class DataFailure extends Failure {
  const DataFailure(super.message);
}
