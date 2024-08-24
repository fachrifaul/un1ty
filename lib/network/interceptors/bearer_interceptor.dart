import 'package:dio/dio.dart';

class BearerInterceptor extends Interceptor {
  // FetchOrRefreshAccessToken fetchOrRefreshAccessToken;
  // BearerInterceptor(this.fetchOrRefreshAccessToken);

  static const headerPrefix = 'Bearer ';
  static const headerKey = 'Authorization';

  /// Add Bearer token to Authorization Header
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // final token = await fetchOrRefreshAccessToken.fetchOrRefreshAccessToken();

    // await token.onValue((value) async {
    //   if (value != null) {
    //     options.headers
    //         .addAll({headerKey: '$headerPrefix${value.accessToken}'});
    //   }
    // });
    return handler.next(options);
  }
}
