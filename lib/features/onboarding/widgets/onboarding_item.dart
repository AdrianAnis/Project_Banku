import 'package:flutter/material.dart';
import '../models/onboarding_data.dart';
import '../../../../core/theme/app_colors.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingData data;

  const OnboardingItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 83),
        Image.asset(data.animasiGambar),
        SizedBox(height: 73),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                data.highlight,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  color: AppColors.accent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 26),
              Text(
                data.deskripsi,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  color: AppColors.gray,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
