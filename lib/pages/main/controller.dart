import 'package:get/get.dart';

class MainController extends GetxController {
  RxString activeMenu = "home".obs;
  RxBool prepareLoad = true.obs;

  @override
  void onInit() {
    serPrepared();

    super.onInit();
  }

  void setActiveMenu(String menu) {
    activeMenu.value = menu;
  }

  void serPrepared() {
    Future.delayed(Duration(seconds: 1), () {
      prepareLoad.value = false;
    });
  }
}
