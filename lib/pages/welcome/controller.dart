import 'package:get/get.dart';
import 'package:myapp/pages/onboarding/page.dart';
import 'package:myapp/routes.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    goTo();
  }

  void goTo() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(
        () => OnboardingPage(), // Use the target page widget
        routeName: AppRoutes.onboarding, // Optional: Specify the route name
        transition: Transition.rightToLeft, // Specify the transition animation
        duration: Duration(milliseconds: 600), // Set the transition duration
      );
    });
  }
}
