import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:slinfy_crm/src/models/user_model.dart';
import 'package:slinfy_crm/src/repo/repository/authentication_repository.dart';
import 'package:slinfy_crm/src/repo/repository/database_repository.dart';

part 'login_form_event.dart';

part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormValidate> {
  final AuthenticationRepository _authenticationRepository;
  final DatabaseRepository _databaseRepository;

  LoginFormBloc(this._authenticationRepository, this._databaseRepository)
      : super(
      const LoginFormValidate(
          email: 'example@gmail.com',
          password: '',
          isEmailValid: true,
          isPasswordValid: true,
          isFormValid: false,
          isFormValidateFailed: false,
          isLoading: false)) {
    on<EmailChange>(_onEmailChanged);
    on<PasswordChange>(_onPasswordChanged);
    on<LoginFormSubmitted>(_onFormSubmitted);
    // on<LoginFormSucceeded>(_onFormSucceeded);
  }


  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  bool _isEmailValid(String email) {
    return _emailRegExp.hasMatch(email);
  }

  FutureOr<void> _onEmailChanged(EmailChange event, Emitter<LoginFormValidate> emit) {
    emit(state.copyWith(
      isFormSuccessful: false,
      isFormValid: false,
      isFormValidateFailed: false,
      errorMessage: "",
      email: event.email,
      isEmailValid: _isEmailValid(event.email),
    ));
  }

  _onPasswordChanged(PasswordChange event, Emitter<LoginFormValidate> emit) {
    emit(state.copyWith(
      isFormSuccessful: false,
      isFormValid: true,
      isFormValidateFailed: false,
      errorMessage: "",
      password: event.password,
      // isEmailValid: _isEmailValid(event.email),
    ));
  }

  _onFormSubmitted(LoginFormSubmitted event,
      Emitter<LoginFormValidate> emit) async {
    UserModel user = UserModel(
      email: state.email,
      password: state.password,);

    // if (event.status == Status.signUp) {
    //   await _updateUIAndSignUp(event, emit, user);
    // } else if (event.status == Status.signIn) {
    //   await _authenticateUser(event, emit, user);
    // }
  }

  _onFormSucceeded() {

  }

  _updateUIAndSignUp(LoginFormSucceeded event, Emitter<LoginFormValidate> emit,
      UserModel user) async {
    // emit(
    //     state.copyWith(errorMessage: "",
    //         isFormValid: _isPasswordValid(state.password) &&
    //             _isEmailValid(state.email) &&
    //             isLoading: true));
    if (state.isFormValid) {
      try {
        UserCredential? authUser = await _authenticationRepository.signUp(user);
        UserModel updatedUser = user.copyWith(
            uid: authUser!.user!.uid, isVerified: authUser.user!.emailVerified);
        await _databaseRepository.saveUserData(updatedUser);
        if (updatedUser.isVerified!) {
          emit(state.copyWith(isLoading: false, errorMessage: ""));
        } else {
          emit(state.copyWith(isFormValid: false,
              errorMessage: "Please Verify your email, by clicking the link sent to you by mail.",
              isLoading: false));
        }
      } on FirebaseAuthException catch (e) {
        emit(state.copyWith(
            isLoading: false, errorMessage: e.message, isFormValid: false));
      }
    } else {
      emit(state.copyWith(
          isLoading: false, isFormValid: false, isFormValidateFailed: true));
    }
  }

}
