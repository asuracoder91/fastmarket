import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_wrapper.freezed.dart';

@Freezed(genericArgumentFactories: true)
class ResponseWrapper<T> with _$ResponseWrapper<T> {
  @override
  final String status;
  @override
  final String code;
  @override
  final String message;
  @override
  final T? data;

  const ResponseWrapper({
    required this.status,
    required this.code,
    required this.message,
    this.data,
  });

  factory ResponseWrapper.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => ResponseWrapper(
    status: json['status'],
    code: json['code'],
    message: json['message'],
    data: fromJsonT(json['data']),
  );
}
