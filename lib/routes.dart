import 'package:get/get.dart';
import 'package:myapp/pages/auth/register/page.dart';
import 'package:myapp/pages/onboarding/allow_location_page.dart';
import 'package:myapp/pages/onboarding/allow_notification_page.dart';
import 'package:myapp/pages/onboarding/page.dart';
import 'pages/welcome/page.dart';
import 'pages/home/page.dart';

class AppRoutes {
  static const welcome = '/';
  static const onboarding = '/onboarding';
  static const allowNotification = '/allow_notification';
  static const allowLocation = '/allow_location';
  static const register = '/register';
  static const home = '/home';
}

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.welcome, page: () => const WelcomePage()),
    GetPage(name: AppRoutes.onboarding, page: () => const OnboardingPage()),
    GetPage(
      name: AppRoutes.allowNotification,
      page: () => const AllowNotificationPage(),
    ),
    GetPage(
      name: AppRoutes.allowLocation,
      page: () => const AllowLocationPage(),
    ),
    GetPage(name: AppRoutes.register, page: () => RegisterPage()),
    GetPage(name: AppRoutes.home, page: () => const HomePage()),
  ];
}
