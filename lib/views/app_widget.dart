import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gelivery_myanmar_test/views/routes/app_routes.dart';
import 'package:get/get.dart';

import '../core/constants/colors.dart';
import '../core/log/logger.dart';

class GeliveryMMApp extends StatefulWidget {
  const GeliveryMMApp({Key? key}) : super(key: key);

  @override
  State<GeliveryMMApp> createState() => _GeliveryMMAppState();
}

class _GeliveryMMAppState extends State<GeliveryMMApp> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GeliveryMyanmar",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      defaultTransition: Transition.fade,
      logWriterCallback: (message, {bool isError = false}) => logger.d(message),
      theme: ThemeData(
        fontFamily: 'Mon',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: AppColors.mainColor,
        colorScheme: const ColorScheme.light().copyWith(
          secondary: AppColors.secondaryColor,
          primary: AppColors.mainColor,
        ),
      ),
    );
  }
}
