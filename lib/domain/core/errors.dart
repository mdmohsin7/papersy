import 'package:papersy/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a failure at unrecoverable point. Terminating...';
    return Error.safeToString('$explanation Failure: $valueFailure');
  }
}
