import 'package:get/get.dart';

import '../../core/utils/storage_utils.dart';
import '../services/remote/api_service.dart';

abstract class AuthRepository {
  Stream<bool> login(String username, String password);
  Stream<bool> logout();
}

class AuthRepositoryImpl extends AuthRepository {
  static final AuthRepositoryImpl _singleton = AuthRepositoryImpl._internal();
  AuthRepositoryImpl._internal();
  factory AuthRepositoryImpl() => _singleton;

  final ApiService remote = Get.find();

  @override
  Stream<bool> login(String username, String password) async* {
    var requestBody = {"username": username, "password": password};

    var response = await remote.login(requestBody);

    if (response.success ?? false) {
      StorageUtils.saveToken(response.token);
      yield true;
    } else {
      throw response.message ?? "error";
    }
  }

  @override
  Stream<bool> logout() async* {
    var response = await remote.revokeToken({});

    if (response.success ?? false) {
      StorageUtils.removeToken();
      yield true;
    } else {
      throw response.message ?? "error";
    }
  }
}
