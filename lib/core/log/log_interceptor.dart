import 'package:dio/dio.dart';

import 'curl_generator.dart';
import 'logger.dart';

class CURLInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i(CURLGenerator.getCURLFromRequest(options));
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.wtf(response.data);
    super.onResponse(response, handler);
  }
}
