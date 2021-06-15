import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:papersy/domain/core/errors.dart';
import 'package:papersy/domain/core/failures.dart';

abstract class ValueObject<T> extends Equatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (v) => v);
  }

  bool isValid() => value.isRight();

  @override
  List<Object?> get props => [value];
}
