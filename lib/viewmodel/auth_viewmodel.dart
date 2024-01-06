// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';
import '../data/repositories/auth_repository.dart';

class AuthViewModel {
  static final AuthViewModel _singleton = AuthViewModel._internal();
  factory AuthViewModel() => _singleton;
  AuthViewModel._internal() {
    loginStream = _loginStateController.stream;
    logoutStream = _logoutStateController.stream;
  }

  final AuthRepository _authRepo = Get.find();

  final StreamController<MyState<bool>> _loginStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> loginStream;
  StreamSubscription? _loginSubscription;

  void login(String username, String passcode) async {
    await _loginSubscription?.cancel();
    try {
      throwif(username.isEmpty, "Enter Username (or) Phone/Email");
      throwif(passcode.isEmpty, "Enter Password");
    } catch (e) {
      _loginStateController.sink.add(MyState.failed(e));
      return;
    }
    _loginStateController.sink.add(MyState.loading());
    _loginSubscription = _authRepo
        .login(username, passcode)
        .handleError((e) => _loginStateController.sink
            .add(MyState.failed(e is DioError ? e.message : e)))
        .listen(
            (user) => _loginStateController.sink.add(MyState.success(user)));
  }

  final StreamController<MyState<bool>> _logoutStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> logoutStream;
  StreamSubscription? _logoutSubscription;

  void logout() async {
    await _logoutSubscription?.cancel();
    _logoutStateController.sink.add(MyState.loading());
    _logoutSubscription = _authRepo
        .logout()
        .handleError((e) => _logoutStateController.sink.add(MyState.failed(e)))
        .listen((b) => _logoutStateController.sink.add(MyState.success(b)));
  }
}
