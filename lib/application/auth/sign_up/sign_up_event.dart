part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignUpEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignUpEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
}
