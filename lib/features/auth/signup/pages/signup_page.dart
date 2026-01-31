import 'package:app_banku/core/theme/app_colors.dart';
import 'package:app_banku/shared/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_banku/features/auth/signup/controllers/signup_controller.dart';

class SignUpPage extends GetView<SignupController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 52.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 92),

            // ===== TITLE =====
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Sign Up ',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'BanKu',
                    style: TextStyle(
                      color: AppColors.accent,
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 6),
            Text(
              'Sign up sekarang untuk menjadi bagian dari BanKu',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColors.gray,
                fontWeight: FontWeight.w300,
              ),
            ),

            const SizedBox(height: 64),

            Text(
              'Email',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),

            AuthTextField(
              hint: 'ex: adriangans@gmail.com',
              icon: Icons.email_outlined,
              controller: controller.emailController, 
            ),

            const SizedBox(height: 16),

            Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),

            AuthPasswordField(
              hint: 'min 8 karakter',
              controller: controller.passwordController, 
            ),

            const SizedBox(height: 64),

            // ===== BUTTON =====
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: controller.signup, // 🔥 siap dipakai
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(child: Divider(color: AppColors.softGray)),
                const SizedBox(width: 24),
                Text(
                  'or',
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(child: Divider(color: AppColors.softGray)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
