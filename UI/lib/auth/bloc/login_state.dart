
import 'package:anbessafit/auth/model/auth_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final AuthLoginData data;

  const LoginSuccess(this.data);

  @override
  List<Object?> get props => [data];
}

class LoginError extends LoginState {
  final String errorMessage;

  const LoginError(this.errorMessage);
}
