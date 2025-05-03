import 'package:get/get.dart';
import 'package:myapp/routes.dart';

class FirstBannerController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    goTo();
  }

  void goTo() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.main);
    });
  }
}
