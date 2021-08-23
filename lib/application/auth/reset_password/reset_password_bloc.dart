import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:papersy/domain/auth/auth_failure.dart';
import 'package:papersy/domain/auth/value_objects.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordState.initial());

  @override
  Stream<ResetPasswordState> mapEventToState(
    ResetPasswordEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
