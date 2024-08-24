import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

/// TODO: no needed
/// The outcome of a operation.
///
/// An outcome can be either a success and return a [T] result
/// or a failure and return a [Failure] error.
@freezed
class Result<T> with _$Result<T> {
  /// Creates a success result of [T] type.
  const factory Result.data(T result) = _ResultSuccess<T>;

  /// Creates a failure result with [error].
  const factory Result.error(Object error, [StackTrace? stackTrace]) =
      _ResultError;

  factory Result.guard(T Function() cb) {
    try {
      return Result.data(cb());
    } catch (err, stack) {
      return Result.error(err, stack);
    }
  }
}
