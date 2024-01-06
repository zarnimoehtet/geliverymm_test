import 'package:flutter/material.dart';
import 'package:gelivery_myanmar_test/core/extensions/extension_collection.dart';
import 'package:gelivery_myanmar_test/views/screens/auth/controllers/login_controller.dart';
import 'package:get/get.dart';

import '../../../../core/constants/colors.dart';
import '../../../custom/ input_border_decoration.dart';

class LoginPage extends GetView<LoginController> {
  static const String route = "/login";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: Get.width,
              child: Center(
                child: Image.asset(
                  'assets/icons/logo.png',
                  width: 180,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Login to your Account",
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: TextField(
                controller: controller.phoneController,
                focusNode: controller.phoneFocus,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: borderInputDecoration(
                  Colors.black87,
                  hinttext: "Username (or) Phone/Email",
                  prefixIcon: const Icon(
                    Icons.person,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
                onSubmitted: (_) =>
                    controller.phoneFocus.nextToFocus(controller.passwordFocus),
                style: const TextStyle(color: AppColors.mainColor),
                cursorColor: AppColors.mainColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(() => TextField(
                  controller: controller.passwordController,
                  focusNode: controller.passwordFocus,
                  obscureText: !controller.isVisible.value,
                  textInputAction: TextInputAction.done,
                  decoration: borderInputDecoration(
                    Colors.black87,
                    hinttext: "Password",
                    prefixIcon: const Icon(
                      Icons.lock_rounded,
                      size: 20,
                      color: Colors.grey,
                    ),
                    suffixIcon: InkWell(
                        borderRadius: BorderRadius.circular(11),
                        onTap: () {
                          controller.isVisible.value =
                              !controller.isVisible.value;
                        },
                        child: Icon(
                          !controller.isVisible.value
                              ? Icons.visibility_off_rounded
                              : Icons.visibility,
                          size: 20,
                          color: Colors.grey.withOpacity(0.5),
                        )),
                  ),
                  style: const TextStyle(color: AppColors.mainColor),
                  cursorColor: AppColors.mainColor,
                )),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(() => Checkbox(
                      value: controller.isChecked.value,
                      onChanged: (b) {
                        controller.isChecked.value = b ?? false;
                      })),
                  const Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.mainColor,
                      color: AppColors.mainColor,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width,
              height: 50,
              child: Obx(() => MaterialButton(
                    color: controller.isChecked.value
                        ? AppColors.mainColor
                        : Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11)),
                    onPressed: () {
                      controller.login();
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
