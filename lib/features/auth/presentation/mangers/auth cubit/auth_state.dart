part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
  const AuthState();
}

class AuthInitial extends AuthState {}

class RegisterLoadingState extends AuthState {}

class RegisterSuccessState extends AuthState {}

// ignore: must_be_immutable
class RegisterFailureState extends AuthState {
  String? errorMessage;

  RegisterFailureState({required this.errorMessage});
}

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {}

// ignore: must_be_immutable
class LoginFailureState extends AuthState {
  String? errorMessage;

  LoginFailureState({required this.errorMessage});
}

class SendCodeLoadingState extends AuthState {}

class SendCodeSuccessState extends AuthState {}

// ignore: must_be_immutable
class SendCodeFailureState extends AuthState {
  String? errorMessage;

  SendCodeFailureState({required this.errorMessage});
}

class CheckCodeLoadingState extends AuthState {}

class CheckCodeSuccessState extends AuthState {}

// ignore: must_be_immutable
class CheckCodeFailureState extends AuthState {
  String? errorMessage;

  CheckCodeFailureState({required this.errorMessage});
}

class EditUserSuccessState extends AuthState {}

class EditUserLoadingState extends AuthState {}

// ignore: must_be_immutable
class EditUserFailureState extends AuthState {
  String? errorMessage;

  EditUserFailureState({required this.errorMessage});
}
