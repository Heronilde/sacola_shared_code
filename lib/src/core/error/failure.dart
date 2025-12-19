import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.status, required this.message});
  final String message;
  final int status;
  @override
  List<Object> get props => [
        status,
        message,
      ];
}

class ApiFailure extends Failure implements Exception {
  const ApiFailure({required super.status, required super.message});
}
