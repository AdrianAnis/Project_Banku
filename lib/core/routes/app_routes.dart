import 'package:app_banku/features/auth/login/pages/login_page.dart';
import 'package:get/get.dart';

// ===== ONBOARDING =====
import '../../features/onboarding/page/splash_page.dart';
import '../../features/onboarding/page/onboarding_page.dart';

class AppRoutes {
  // ===== NAMA ROUTE =====
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';

  // ===== DAFTAR HALAMAN =====
  static final pages = [
    GetPage(name: splash, page: () => const SplashPage()),
    GetPage(name: onboarding, page: () => OnboardingPage()),
    GetPage(name: login, page: () => LoginPage()),
  ];
}
