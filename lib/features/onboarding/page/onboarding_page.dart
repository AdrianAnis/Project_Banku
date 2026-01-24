import 'package:flutter/material.dart';
import 'package:app_banku/core/theme/app_colors.dart';
import '../data/onboarding_list.dart';
import '../widgets/onboarding_item.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final firstData = onboardingList[0];

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(child: OnboardingItem(data: firstData)),
        ),
      ),
    );
  }
}
