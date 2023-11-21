import 'package:supervisor/constants/constants.dart';

sealed class Result<T> {
  final T? data;
  final Status status;
  final String? message;
  final String? code;

  const Result(this.status, {this.data, this.message, this.code});
}

final class Success<T> extends Result<T> {
  Success(T data) : super(Status.success, data: data);
}

final class Loading<T> extends Result<T> {
  Loading() : super(Status.loading);
}

final class Failure<T> extends Result<T> {
  Failure({T? data, String? message, String? code})
      : super(Status.failure, data: data, message: message, code: code);
}
