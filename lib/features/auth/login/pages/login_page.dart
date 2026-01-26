import 'package:app_banku/core/theme/app_colors.dart';
import 'package:app_banku/shared/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 52.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 92),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Login ',
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
            SizedBox(height: 6),
            Text(
              'Login sekarang untuk menjadi bagian dari Banku',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColors.gray,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 64),
            Text(
              'Email',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            AuthTextField(
              hint: 'ex: adriangans@gmail.com',
              icon: Icons.email_outlined,
            ),
            SizedBox(height: 16),
            Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColors.primary,
                fontWeight: FontWeight.w600, 
              ),
            ),
            SizedBox(height: 8),
            AuthPasswordField(hint: 'min 8 karakter'),
          ],
        ),
      ),
    );
  }
}
