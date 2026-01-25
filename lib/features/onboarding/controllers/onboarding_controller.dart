import 'package:app_banku/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/onboarding_list.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();

  final RxInt index = 0.obs;

  void onPageChanged(int value) {
    index.value = value;
  }

  void next() {
    if (index.value < onboardingList.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      Get.offAllNamed(AppRoutes.login);
    }
  }

  void back() {
    if (index.value > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
