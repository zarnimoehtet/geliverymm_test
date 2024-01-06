import 'package:flutter/material.dart';
import 'package:gelivery_myanmar_test/core/constants/colors.dart';

class SplashPage extends StatelessWidget {
  static const String route = "/splash";
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/icons/logo.png',
              width: 180,
            ),
          ),
          const Positioned(
              bottom: 50,
              child: CircularProgressIndicator(
                color: AppColors.secondaryColor,
              ))
        ],
      ),
    );
  }
}
