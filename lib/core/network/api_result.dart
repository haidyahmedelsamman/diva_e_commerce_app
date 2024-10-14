import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

/// A sealed class that represents the result of an API call.
@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  /// A factory constructor that creates a successful API result.
  /// It contains the response data of type `T`.
  const factory ApiResult.success(T data) = Success<T>;

  /// A factory constructor that creates a failure API result.
  /// It contains an error message that explains what went wrong.
  const factory ApiResult.failure(String errorMessage) = Failure<T>;
}
