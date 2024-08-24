import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';

import '../common/result.dart';
import 'interceptors/bearer_interceptor.dart';

class ApiDio {
  final Dio dio = Dio();

  ApiDio() {
    dio.options
      ..baseUrl = 'https://httpbin.org'
      ..contentType = Headers.jsonContentType;

    dio.interceptors
      ..add(LoggyDioInterceptor())
      ..add(BearerInterceptor());
  }

  Future<Result<T>> get<T>(
    String path,
    T Function(Map<String, dynamic>) decoder,
  ) async {
    final result = await dio.get(path);
    return Result.guard(() => decoder(result.data));
  }

  Future<Result<T>> post<T>(
    String path,
    T Function(Map<String, dynamic>) decoder, {
    Map<String, dynamic>? body,
  }) async {
    final result = await dio.post(
      path,
      data: body,
    );
    return Result.guard(() => decoder(result.data));
  }

  Future<Result<T>> patch<T>(
    String path,
    T Function(Map<String, dynamic>) decoder, {
    Map<String, dynamic>? body,
  }) async {
    final result = await dio.patch(
      path,
      data: body,
    );
    return Result.guard(() => decoder(result.data));
  }

  Future<Result<T>> delete<T>(
    String path,
    T Function(Map<String, dynamic>) decoder, {
    Map<String, dynamic>? body,
  }) async {
    final result = await dio.delete(
      path,
      data: body,
    );
    return Result.guard(() => decoder(result.data));
  }
}
