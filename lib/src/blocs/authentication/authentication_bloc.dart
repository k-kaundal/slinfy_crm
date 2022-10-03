import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slinfy_crm/src/models/user_model.dart';
import 'package:slinfy_crm/src/repo/repository/authentication_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(AuthenticationRepositoryImpl authenticationRepositoryImpl) : super(AuthenticationInitial()) {
    on<AuthenticationEvent>((event, emit) async {
      if(event is AuthenticationStarted){
        // UserModel userModel = await

      }else if(event is AuthenticationSignedOut){

        
        emit(AuthenticationFailure());
      }

    });
  }
}
