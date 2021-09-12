import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:papersy/domain/auth/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required EmailAddress emailAddress,
    required String branch,
    required String year,
    required int semester,
  }) = _User;
}
