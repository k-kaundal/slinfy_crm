part of 'details_form_bloc.dart';

abstract class DetailsFormState extends Equatable {
  const DetailsFormState();
}

class DetailsFormInitial extends DetailsFormState {
  @override
  List<Object> get props => [];
}

class DetailsFormsValidate extends DetailsFormState {
  final String email;
  final String? displayName;
  final int age;
  final String password;
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isFormValid;
  final bool isNameValid;
  final bool isAgeValid;
  final bool isFormValidadteFailed;
  final bool isLoading;
  final String errorMessage;
  final bool isFormSuccessful;

  const DetailsFormsValidate(
      {required this.email,
      required this.password,
      required this.isEmailValid,
      required this.isPasswordValid,
      required this.isFormValid,
      required this.isLoading,
      this.errorMessage = '',
      required this.isNameValid,
      required this.isAgeValid,
      required this.age,
      required this.isFormValidadteFailed,
      this.displayName,
      this.isFormSuccessful = false});

  DetailsFormsValidate copyWith(
      {String? email,
      String? displayName,
      int? age,
      String? password,
      bool? isEmailValid,
      bool? isPasswordValid,
      bool? isFormValid,
      bool? isNameValid,
      bool? isAgeValid,
      bool? isFormValidadteFailed,
      bool? isLoading,
      String? errorMessage,
      bool? isFormSuccessful}) {
    return DetailsFormsValidate(
        email: email ?? this.email,
        password: password ?? this.password,
        isEmailValid: isEmailValid ?? this.isEmailValid,
        isPasswordValid: isPasswordValid ?? this.isPasswordValid,
        isFormValid: isFormValid ?? this.isFormValid,
        isLoading: isLoading ?? this.isLoading,
        isNameValid: isNameValid ?? this.isNameValid,
        isAgeValid: isAgeValid ?? this.isAgeValid,
        age: age ?? this.age,
        isFormValidadteFailed:
            isFormValidadteFailed ?? this.isFormValidadteFailed,
        isFormSuccessful: isFormSuccessful ?? this.isFormSuccessful);
  }

  @override
  List<Object?> get props => [
        email,
        displayName,
        age,
        password,
        isEmailValid,
        isPasswordValid,
        isFormValid,
        isNameValid,
        isAgeValid,
        isFormValidadteFailed,
        isLoading,
        errorMessage,
        isFormSuccessful
      ];
}
