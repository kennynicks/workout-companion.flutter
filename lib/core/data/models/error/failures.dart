import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]);
}

// General failures

class BluetoothUnavailableFailure extends Failure {
  @override
  List<Object> get props => null;
}

class BluetoothOffFailure extends Failure {
  @override
  List<Object> get props => null;
}

class IllegalArgumentFailure extends Failure {
  List<Object> get props => null;
}
