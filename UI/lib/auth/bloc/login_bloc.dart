import 'package:anbessafit/auth/bloc/login_event.dart';
import 'package:anbessafit/auth/bloc/login_state.dart';
import 'package:anbessafit/auth/model/signin_model.dart';
import 'package:anbessafit/auth/repository/signin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc(this.authRepository) : super(LoginInitial()) {
    on<LoginRequested>((event, emit) async => await _login(event, emit));
    on<TrainerLoginRequested>(
        (event, emit) async => await _trainerLogin(event, emit));
    on<LoginResponseReceived>((event, emit) => emit(event.success
        ? LoginSuccess(event.data!)
        : LoginError(event.message!)));
  }

  Future<void> _login(LoginRequested event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      final loginData =
          await authRepository.login(event.email, event.password, Role.Trainee);
      // Emit appropriate state based on login response:
      emit(LoginSuccess(loginData));
    } catch (error) {
      emit(LoginError(error.toString()));
    }
  }

  Future<void> _trainerLogin(
      TrainerLoginRequested event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      final loginData =
          await authRepository.login(event.email, event.password, Role.Trainer);
      // Emit appropriate state based on login response:
      emit(LoginSuccess(loginData));
    } catch (error) {
      emit(LoginError(error.toString()));
    }
  }
}
