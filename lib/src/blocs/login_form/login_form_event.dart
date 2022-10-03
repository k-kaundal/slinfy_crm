part of 'login_form_bloc.dart';

abstract class LoginFormEvent extends Equatable {
  const LoginFormEvent();
}

class EmailChange extends LoginFormEvent {
  String email;

  EmailChange({required this.email});

  @override
  List<Object?> get props => [email];
}

class PasswordChange extends LoginFormEvent {
  String password;
  PasswordChange({required this.password});
  @override
  List<Object?> get props => [password];
}

class LoginFormSubmitted extends LoginFormEvent {
  String status;
  LoginFormSubmitted({required this.status});
  @override
  List<Object?> get props => [status];
}

class LoginFormSucceeded extends LoginFormEvent{

  @override
  List<Object?> get props => [];

}
