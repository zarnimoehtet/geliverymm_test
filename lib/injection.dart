import 'dart:async';

import 'package:dio/dio.dart';
import 'package:gelivery_myanmar_test/data/repositories/item_repository.dart';
import 'package:gelivery_myanmar_test/data/services/local/local_item_service.dart';
import 'package:gelivery_myanmar_test/viewmodel/auth_viewmodel.dart';
import 'package:gelivery_myanmar_test/viewmodel/item_viewmodel.dart';
import 'package:get/get.dart';

import 'core/constants/config.dart';
import 'core/log/log_interceptor.dart';
import 'core/log/token_interceptor.dart';
import 'data/repositories/auth_repository.dart';
import 'data/services/remote/api_service.dart';

Future initInjection() async {
  await _initOpenBox();

  _injectRemoteService();
  _injectLocalService();
  _injectRepository();
  _injectViewModels();
  _injectNotification();
}

void _injectNotification() {}

void _injectRemoteService() {
  final options = BaseOptions(
      baseUrl: Config.devhost,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 10000),
      contentType: "application/json",
      validateStatus: (status) {
        return true;
      },
      receiveDataWhenStatusError: true);
  var dio = Dio(options)
    ..interceptors
        .addAll([JwtIntercetor(ApiService(Dio(options))), CURLInterceptor()]);
  Get.put<ApiService>(ApiService(dio));
}

void _injectLocalService() {
  Get.put<LocalItemService>(LocalItemServiceImpl());
}

void _injectRepository() {
  Get.put<AuthRepository>(AuthRepositoryImpl());
  Get.put<ItemRepository>(ItemRepositoryImpl());
}

void _injectViewModels() {
  Get.put(AuthViewModel());
  Get.put(ItemViewModel());
}

Future _initOpenBox() async {
  return Future.wait([]);
}
