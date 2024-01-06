import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../viewmodel/auth_viewmodel.dart';
import '../../../custom/state_dialog.dart';
import '../../home/pages/home_page.dart';

class LoginController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode phoneFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  RxBool isVisible = RxBool(false);
  RxBool isChecked = RxBool(false);

  StreamSubscription? _loginStream;

  final AuthViewModel authVM = Get.find();

  @override
  void onInit() {
    _subscribeLoginState();
    super.onInit();
  }

  void _subscribeLoginState() {
    _loginStream = showStateableDialog<bool>(authVM.loginStream, (user) {
      Get.offAllNamed(HomePage.route);
    }, message: "Loading");
  }

  void login() {
    if (isChecked.value) {
      authVM.login(phoneController.text, passwordController.text);
    }
  }

  @override
  void onClose() {
    _loginStream?.cancel();
    super.onClose();
  }
}
