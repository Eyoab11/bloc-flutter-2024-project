import 'package:anbessafit/auth/model/auth_model.dart';
import 'package:anbessafit/auth/model/signin_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginRequested extends LoginEvent {
  final String email;
  final String password;
  final Role role;

  const LoginRequested(
      {required this.email, required this.password, required this.role});
}

class TrainerLoginRequested extends LoginEvent {
  final String email;
  final String password;
  final Role role;

  const TrainerLoginRequested(
      {required this.email, required this.password, required this.role});
}

class LoginResponseReceived extends LoginEvent {
  final bool success;
  final String? message;
  final AuthLoginData? data;

  const LoginResponseReceived(this.success, this.message, this.data);

  @override
  List<Object?> get props => [success, message, data];
}
