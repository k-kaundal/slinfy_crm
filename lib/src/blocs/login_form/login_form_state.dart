part of 'login_form_bloc.dart';

abstract class LoginFormState extends Equatable {
  const LoginFormState();
}

class LoginFormInitial extends LoginFormState {
  @override
  List<Object> get props => [];
}

class LoginFormValidate extends LoginFormState {
  final String email;
  final String password;
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isFormValid;
  final bool isFormValidateFailed;
  final bool isLoading;
  final String errorMessage;
  final bool isFormSuccessful;

  const LoginFormValidate({
    required this.email,
    required this.password,
    required this.isEmailValid,
    required this.isPasswordValid,
    this.isFormSuccessful = false,
    required this.isFormValid,
    required this.isFormValidateFailed,
    required this.isLoading,
    this.errorMessage = '',
  });

  LoginFormValidate copyWith(
      {String? email,
      String? password,
      bool? isEmailValid,
      bool? isPasswordValid,
      bool? isFormValid,
      bool? isLoading,
      String? errorMessage,
      bool? isFormValidateFailed,
      bool? isFormSuccessful}) {
    return LoginFormValidate(
        email: email ?? this.email,
        password: password ?? this.password,
        isEmailValid: isEmailValid ?? this.isEmailValid,
        isPasswordValid: isPasswordValid ?? this.isPasswordValid,
        isFormValid: isFormValid ?? this.isFormValid,
        isLoading: isLoading ?? this.isLoading,
        errorMessage: errorMessage ?? this.errorMessage,
        isFormValidateFailed: isFormValidateFailed ?? this.isFormValidateFailed,
        isFormSuccessful: isFormSuccessful ?? this.isFormSuccessful);
  }

  @override
  List<Object?> get props => [
        email,
        password,
        isEmailValid,
        isPasswordValid,
        isFormValid,
        isLoading,
        errorMessage,
        isFormValidateFailed,
        isFormSuccessful
      ];
}
