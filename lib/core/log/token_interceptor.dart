// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:dio/dio.dart';
import 'package:gelivery_myanmar_test/core/exceptions/api_error.dart';
import 'package:gelivery_myanmar_test/core/utils/storage_utils.dart';
import '../../data/services/remote/api_service.dart';

int _latestTokenTime = 0;
String? _lastToken;
String? _refreshToken;

void _setLastToken(String token, String refreshToken) {
  _lastToken = token;
  _refreshToken = refreshToken;
  _latestTokenTime = DateTime.now().millisecondsSinceEpoch;
}

class JwtIntercetor extends Interceptor {
  final ApiService tokenService;
  JwtIntercetor(this.tokenService);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    int currentTime = DateTime.now().millisecondsSinceEpoch;
    var token = StorageUtils.getSavedToken();
    if (token != null) {
      _setLastToken(token.accessToken, token.refreshToken);
    }
    if (_lastToken == null ||
        currentTime - _latestTokenTime >= (token?.expireTime ?? 0)) {
      try {
        Map<String, String> body = {
          "accessToken": _refreshToken ?? "",
        };
        var data = await tokenService.refreshToken(body);

        StorageUtils.saveToken(data.token);

        _setLastToken(
            data.token?.accessToken ?? "", data.token?.refreshToken ?? "");
      } catch (e) {
        // Press Token generator when no internet
      }
    }
    if (_lastToken != null && token != null) {
      options.headers.addAll({
        "Authorization": "Bearer $_lastToken",
      });
    }
    super.onRequest(options, handler);
  }
//  3367ca18-9fd6-48e0-8298-3f5456eb674d

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.isNoInternet) {
      throw NoInternetError(requestOptions: err.requestOptions);
    } else if (err.isConnectionTimeOut) {
      throw "Time of connect to server is too long.";
    } else if (err.isHttpStatusError) {
      throw "Http status error";
    } else if (err.isConnectionClose) {
      throw "Server connection is stopped. Please try again.";
    } else {
      throw err;
    }
  }
}

extension DioExtension on DioError {
  bool get isConnectionTimeOut => type == DioErrorType.connectionTimeout;

  bool get isConnectionClose =>
      type == DioErrorType.unknown &&
      message!.startsWith(
          "HttpException: Connection closed before full header was received");

  bool get isHttpStatusError => type == DioErrorType.badResponse;

  bool get isNoInternet =>
      type == DioErrorType.unknown &&
          message!.startsWith("SocketException: Connection failed") ||
      message!.startsWith("SocketException: Failed host lookup");
}
