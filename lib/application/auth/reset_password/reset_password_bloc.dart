import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:papersy/domain/auth/auth_failure.dart';
import 'package:papersy/domain/auth/i_auth_facade.dart';
import 'package:papersy/domain/auth/value_objects.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(this._authFacade) : super(ResetPasswordState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<ResetPasswordState> mapEventToState(
    ResetPasswordEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (value) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(value.emailStr),
        );
      },
      sendLinkPressed: (value) async* {
        if (state.emailAddress.isValid()) {
          Either<AuthFailure, Unit> failureOrSuccess = await _authFacade
              .sendPasswordResetLink(emailAddress: state.emailAddress);
          yield state.copyWith(
            isSubmitted: true,
            resetFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
      },
    );
  }
}
