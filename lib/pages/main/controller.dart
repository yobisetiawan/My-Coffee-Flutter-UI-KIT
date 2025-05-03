import 'package:get/get.dart';

class MainController extends GetxController {
  RxString activeMenu = "home".obs;

  // Method to update the active menu
  void setActiveMenu(String menu) {
    activeMenu.value = menu;
  }
}
