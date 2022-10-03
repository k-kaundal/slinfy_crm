import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slinfy_crm/src/repo/repository/authentication_repository.dart';
import 'package:slinfy_crm/src/repo/repository/database_repository.dart';

part 'details_form_event.dart';

part 'details_form_state.dart';

class DetailsFormBloc extends Bloc<DetailsFormEvent, DetailsFormsValidate> {
  final AuthenticationRepository _authenticationRepository;

  DetailsFormBloc(this._authenticationRepository, DatabaseRepositoryImpl databaseRepositoryImpl)
      : super(const DetailsFormsValidate(
            email: '',
            password: '',
            isEmailValid: true,
            isPasswordValid: true,
            isFormValid: false,
            isLoading: false,
            isNameValid: true,
            isAgeValid: true,
            age: 0,
            isFormValidadteFailed: false)) {
    // on<EmailChanged>(_onEmailChanged);
    // on<PasswordChanged>(_onPasswordChanged);
    // on<NameChanged>(_onNameChanged);
    // on<AgeChanged>(_onAgeChanged);
    // on<FormSubmitted>(_onFormSubmitted);
    // on<FormSucceeded>(_onFormSucceeded);
    // on<DetailsFormEvent>((event, emit) {});
  }
}
