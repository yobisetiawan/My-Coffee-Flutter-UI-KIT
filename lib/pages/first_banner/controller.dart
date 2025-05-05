import 'package:get/get.dart';
import 'package:myapp/pages/main/page.dart';
import 'package:myapp/routes.dart';

class FirstBannerController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    goTo();
  }

  void goTo() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(
        () => MainPage(),
        routeName: AppRoutes.main,
        transition: Transition.rightToLeft,
        duration: Duration(milliseconds: 600),
      );
    });
  }
}
