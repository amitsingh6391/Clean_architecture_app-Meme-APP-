import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  // const Failure({this.message});
  const Failure({this.message}) : super();

  final String? message;

  @override
  List<Object?> get props => [message];
}
