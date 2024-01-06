import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gelivery_myanmar_test/views/screens/auth/pages/login_page.dart';
import 'package:gelivery_myanmar_test/views/screens/home/binding/home_binding.dart';
import 'package:gelivery_myanmar_test/views/screens/home/pages/home_page.dart';
import 'package:gelivery_myanmar_test/views/screens/splash/binding/splash_binding.dart';
import 'package:gelivery_myanmar_test/views/screens/splash/page/splash_page.dart';
import 'package:get/get.dart';

import '../screens/auth/binding/login_binding.dart';

class AppRoutes {
  static String get initialRoute => SplashPage.route;
  static List<GetPage> get pages => [
        GetPage(
            name: SplashPage.route,
            binding: SplashBinding(),
            page: () => const AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle(
                      statusBarColor: Colors.transparent,
                      statusBarIconBrightness: Brightness.dark),
                  child: SplashPage(),
                )),
        GetPage(
            name: LoginPage.route,
            binding: LoginBinding(),
            page: () => const AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle(
                      statusBarColor: Colors.transparent,
                      statusBarIconBrightness: Brightness.dark),
                  child: LoginPage(),
                )),
        GetPage(
          name: HomePage.route,
          binding: HomeBinding(),
          page: () => const HomePage(),
        ),
      ];
}
