import 'package:gelivery_myanmar_test/core/utils/storage_utils.dart';
import 'package:gelivery_myanmar_test/views/screens/auth/pages/login_page.dart';
import 'package:gelivery_myanmar_test/views/screens/home/pages/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 4), () {
      var token = StorageUtils.getSavedToken();
      if (token != null) {
        Get.offAndToNamed(HomePage.route);
      } else {
        Get.offAndToNamed(LoginPage.route);
      }
    });

    super.onInit();
  }
}
