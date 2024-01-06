import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gelivery_myanmar_test/core/log/log_interceptor.dart';
import 'package:gelivery_myanmar_test/data/services/remote/api_service.dart';
import 'package:get/get.dart';

main() async {
  final options = BaseOptions(
      baseUrl: "https://dev.gigagates.com/qq-delivery-backend",
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 10000),
      contentType: "application/json",
      validateStatus: (status) {
        return true;
      },
      receiveDataWhenStatusError: true);
  var dio = Dio(options)..interceptors.addAll([CURLInterceptor()]);
  Get.put<ApiService>(ApiService(dio));

  final ApiService apiService = Get.find();

  test("Auth Test", () async {
    var requestBody = {"username": "admin", "password": "abc123"};

    await apiService.login(requestBody);
  });

  test("List Test", () async {
    await apiService.getPickList(0);
  });
}
