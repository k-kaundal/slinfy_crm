part of 'details_form_bloc.dart';

enum Status { signIn, signUp }

abstract class DetailsFormEvent extends Equatable {
  const DetailsFormEvent();

  @override
  List<Object> get props => [];
}

class EmailChanged extends DetailsFormEvent {
  final String email;

  const EmailChanged(this.email);

  @override
  List<Object> get props => [email];
}

class NameChanged extends DetailsFormEvent {
  final String displayName;

  const NameChanged(this.displayName);

  @override
  List<Object> get props => [displayName];
}

class PasswordChange extends DetailsFormEvent {
  final String password;

  const PasswordChange(this.password);

  @override
  List<Object> get props => [password];
}

class AgeChange extends DetailsFormEvent{
  final int age;
  const AgeChange(this.age);
  @override
  List<Object> get props => [age];
}

class DetailsFormSubmitted extends DetailsFormEvent {
  final Status value;

  const DetailsFormSubmitted(this.value);

  @override
  List<Object> get props => [value];
}

class DetailsFormSucceeded extends DetailsFormEvent {
  const DetailsFormSucceeded();

  @override
  List<Object> get props => [];
}
