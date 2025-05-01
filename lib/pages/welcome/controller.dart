import 'package:get/get.dart';
import 'package:myapp/routes.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    goTo();
  }

  void goTo() {
    Future.delayed(Duration(seconds: 5), () {
      Get.toNamed(AppRoutes.onboarding);
    });
  }
}
