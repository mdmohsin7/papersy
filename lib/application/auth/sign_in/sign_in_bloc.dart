import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:papersy/domain/auth/auth_failure.dart';
import 'package:papersy/domain/auth/i_auth_facade.dart';
import 'package:papersy/domain/auth/value_objects.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._authFacade) : super(SignInState.initial());
  final IAuthFacade _authFacade;

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess = Right(unit);

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: AutovalidateMode.onUserInteraction,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      // signInWithGooglePressed: (e) async* {
      //   yield state.copyWith(
      //     isSubmitting: true,
      //     authFailureOrSuccessOption: none(),
      //   );
      //   final failureOrSuccess = await _authFacade.signInWithGoogle();
      //   yield state.copyWith(
      //     isSubmitting: false,
      //     authFailureOrSuccessOption: some(failureOrSuccess),
      //   );
      // },
    );
  }

  Stream<SignInState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function({
    required EmailAddress emailAddress,
    required Password password,
  })
          forwardedCall) async* {
    Either<AuthFailure, Unit> failureOrSuccess = Right(unit);

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.onUserInteraction,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
