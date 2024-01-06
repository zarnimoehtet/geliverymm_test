import 'package:dio/dio.dart';
import 'package:get/get.dart';

class NoInternetError extends DioError {
  NoInternetError({required super.requestOptions});

  @override
  String get message => "network-request-failed".tr;

  @override
  String toString() => "network-request-failed".tr;
}

class InternalServerError extends DioError {
  InternalServerError({required super.requestOptions});

  @override
  String get message => "Internal Server error";

  @override
  String toString() => "Internal Server error";
}
