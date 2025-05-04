import 'package:get/get.dart';
import 'package:myapp/pages/auth/register/page.dart';
import 'package:myapp/pages/first_banner/page.dart';
import 'package:myapp/pages/main/profile/edit/page.dart';
import 'package:myapp/pages/main/profile/edit_pin/page.dart';
import 'package:myapp/pages/main/profile/refferall/page.dart';
import 'package:myapp/pages/membership_tier/page.dart';
import 'package:myapp/pages/news/page.dart';
import 'package:myapp/pages/notifications/details/page.dart';
import 'package:myapp/pages/notifications/page.dart';
import 'package:myapp/pages/onboarding/allow_location_page.dart';
import 'package:myapp/pages/onboarding/allow_notification_page.dart';
import 'package:myapp/pages/onboarding/page.dart';
import 'package:myapp/pages/tier_teman_coffee/page.dart';
import 'pages/welcome/page.dart';
import 'pages/main/page.dart';

class AppRoutes {
  static const welcome = '/';
  static const onboarding = '/onboarding';
  static const allowNotification = '/allow-notification';
  static const allowLocation = '/allow-location';
  static const register = '/register';
  static const firstBanner = '/first-banner';
  static const main = '/main';
  static const news = '/news';
  static const notifications = '/notifications';
  static const notificationDetails = '/notification-details';
  static const refferal = '/profile-refferal';
  static const editProfile = '/edit-profile';
  static const editPin = '/edit-pin';
  static const membershipTier = '/membership-tier';
  static const tierTemanCoffeePage = '/tier-teman-coffee';
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
    GetPage(name: AppRoutes.firstBanner, page: () => const FirstBanner()),
    GetPage(name: AppRoutes.main, page: () => const MainPage()),
    GetPage(name: AppRoutes.news, page: () => const NewsPage()),
    GetPage(
      name: AppRoutes.notifications,
      page: () => const NotificationPage(),
    ),
    GetPage(name: AppRoutes.refferal, page: () => const RefferalPage()),
    GetPage(name: AppRoutes.editProfile, page: () => const EditProfilePage()),
    GetPage(name: AppRoutes.editPin, page: () => const EditPinPage()),
    GetPage(
      name: AppRoutes.membershipTier,
      page: () => const MembershipTierPage(),
    ),
    GetPage(
      name: AppRoutes.tierTemanCoffeePage,
      page: () => const TierTemanCoffeePage(),
    ),
    GetPage(
      name: AppRoutes.notificationDetails,
      page: () => const NotificationDetailsPage(),
    ),
  ];
}
