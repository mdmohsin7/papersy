// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResetPasswordEventTearOff {
  const _$ResetPasswordEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  SendLinkPressed sendLinkPressed() {
    return const SendLinkPressed();
  }
}

/// @nodoc
const $ResetPasswordEvent = _$ResetPasswordEventTearOff();

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() sendLinkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? sendLinkPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SendLinkPressed value) sendLinkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendLinkPressed value)? sendLinkPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  final ResetPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ResetPasswordEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() sendLinkPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? sendLinkPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SendLinkPressed value) sendLinkPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendLinkPressed value)? sendLinkPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ResetPasswordEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendLinkPressedCopyWith<$Res> {
  factory $SendLinkPressedCopyWith(
          SendLinkPressed value, $Res Function(SendLinkPressed) then) =
      _$SendLinkPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendLinkPressedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements $SendLinkPressedCopyWith<$Res> {
  _$SendLinkPressedCopyWithImpl(
      SendLinkPressed _value, $Res Function(SendLinkPressed) _then)
      : super(_value, (v) => _then(v as SendLinkPressed));

  @override
  SendLinkPressed get _value => super._value as SendLinkPressed;
}

/// @nodoc

class _$SendLinkPressed implements SendLinkPressed {
  const _$SendLinkPressed();

  @override
  String toString() {
    return 'ResetPasswordEvent.sendLinkPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendLinkPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() sendLinkPressed,
  }) {
    return sendLinkPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? sendLinkPressed,
    required TResult orElse(),
  }) {
    if (sendLinkPressed != null) {
      return sendLinkPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SendLinkPressed value) sendLinkPressed,
  }) {
    return sendLinkPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendLinkPressed value)? sendLinkPressed,
    required TResult orElse(),
  }) {
    if (sendLinkPressed != null) {
      return sendLinkPressed(this);
    }
    return orElse();
  }
}

abstract class SendLinkPressed implements ResetPasswordEvent {
  const factory SendLinkPressed() = _$SendLinkPressed;
}

/// @nodoc
class _$ResetPasswordStateTearOff {
  const _$ResetPasswordStateTearOff();

  _ResetPasswordState call(
      {required EmailAddress emailAddress,
      required bool isSubmitted,
      required AutovalidateMode showErrorMessages,
      required Option<Either<AuthFailure, Unit>> resetFailureOrSuccessOption}) {
    return _ResetPasswordState(
      emailAddress: emailAddress,
      isSubmitted: isSubmitted,
      showErrorMessages: showErrorMessages,
      resetFailureOrSuccessOption: resetFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ResetPasswordState = _$ResetPasswordStateTearOff();

/// @nodoc
mixin _$ResetPasswordState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get resetFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      bool isSubmitted,
      AutovalidateMode showErrorMessages,
      Option<Either<AuthFailure, Unit>> resetFailureOrSuccessOption});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  final ResetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? isSubmitted = freezed,
    Object? showErrorMessages = freezed,
    Object? resetFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      resetFailureOrSuccessOption: resetFailureOrSuccessOption == freezed
          ? _value.resetFailureOrSuccessOption
          : resetFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(
          _ResetPasswordState value, $Res Function(_ResetPasswordState) then) =
      __$ResetPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      bool isSubmitted,
      AutovalidateMode showErrorMessages,
      Option<Either<AuthFailure, Unit>> resetFailureOrSuccessOption});
}

/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(
      _ResetPasswordState _value, $Res Function(_ResetPasswordState) _then)
      : super(_value, (v) => _then(v as _ResetPasswordState));

  @override
  _ResetPasswordState get _value => super._value as _ResetPasswordState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? isSubmitted = freezed,
    Object? showErrorMessages = freezed,
    Object? resetFailureOrSuccessOption = freezed,
  }) {
    return _then(_ResetPasswordState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      resetFailureOrSuccessOption: resetFailureOrSuccessOption == freezed
          ? _value.resetFailureOrSuccessOption
          : resetFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {required this.emailAddress,
      required this.isSubmitted,
      required this.showErrorMessages,
      required this.resetFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final bool isSubmitted;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> resetFailureOrSuccessOption;

  @override
  String toString() {
    return 'ResetPasswordState(emailAddress: $emailAddress, isSubmitted: $isSubmitted, showErrorMessages: $showErrorMessages, resetFailureOrSuccessOption: $resetFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPasswordState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.isSubmitted, isSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitted, isSubmitted)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.resetFailureOrSuccessOption,
                    resetFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.resetFailureOrSuccessOption,
                    resetFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(isSubmitted) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(resetFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required EmailAddress emailAddress,
      required bool isSubmitted,
      required AutovalidateMode showErrorMessages,
      required Option<Either<AuthFailure, Unit>>
          resetFailureOrSuccessOption}) = _$_ResetPasswordState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  bool get isSubmitted => throw _privateConstructorUsedError;
  @override
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get resetFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
