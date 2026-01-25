import 'package:flutter/material.dart';
import 'package:app_banku/core/theme/app_colors.dart';
import '../data/onboarding_list.dart';
import '../widgets/onboarding_item.dart';
import '../controllers/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller.pageController,
              itemCount: onboardingList.length,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: controller.onPageChanged,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(24),
                  child: OnboardingItem(data: onboardingList[index]),
                );
              },
            ),
            Positioned(
              left: 0,
              right: 240,
              bottom: 180, 
              child: Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(onboardingList.length, (i) {
                    final isActive = controller.index.value == i;

                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 220),
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      width: isActive
                          ? 28
                          : 8, 
                      height: 8,
                      decoration: BoxDecoration(
                        color: isActive
                            ? AppColors.accent
                            : AppColors.gray,
                        borderRadius: BorderRadius.circular(99),
                      ),
                    );
                  }),
                );
              }),
            ),
            Positioned(
              left: 50,
              bottom: 70,
              child: Obx(() {
                if (controller.index.value == 0) {
                  return const SizedBox.shrink();
                }
                return GestureDetector(
                  onTap: controller.back,
                  child: Text(
                    'Kembali',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.gray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }),
            ),
            Positioned(
              right: 50,
              bottom: 50,
              child: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: controller.next,
                  icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  padding: EdgeInsets.zero, 
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
