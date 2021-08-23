part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required EmailAddress emailAddress,
    required bool isSubmitted,
    required AutovalidateMode showErrorMessages,
    required Option<Either<AuthFailure, Unit>> resetFailureOrSuccessOption,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(
        emailAddress: EmailAddress(''),
        showErrorMessages: AutovalidateMode.disabled,
        isSubmitted: false,
        resetFailureOrSuccessOption: none(),
      );
}
