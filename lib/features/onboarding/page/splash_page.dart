import 'package:app_banku/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import '../../../../core/theme/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 3000), () {
      Get.offAllNamed(AppRoutes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logoBanku.png',
          width: 240,
          height: 240,
        ),
      ),
    );
  }
}
