import 'package:app_banku/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hint;
  final IconData icon;

  const AuthTextField({super.key, required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        color: AppColors.primary,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: (hint),
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: AppColors.gray,
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: Icon(icon, color: AppColors.softGray),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: AppColors.softGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}

class AuthPasswordField extends StatefulWidget {
  final String hint;

  const AuthPasswordField({super.key, required this.hint});

  @override
  State<AuthPasswordField> createState() => _AuthPasswordFieldState();
}

class _AuthPasswordFieldState extends State<AuthPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        color: AppColors.primary,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: AppColors.gray,
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: Icon(Icons.lock_outline_rounded, color: AppColors.softGray),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: AppColors.softGray,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: AppColors.softGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}
