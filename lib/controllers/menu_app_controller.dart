import 'package:get/get.dart';

class MenuAppController extends GetxController {
  // Reactive variable to track the selected menu key
  var selectedMenuKey = 'home'.obs;

  // Function to update the selected menu
  void selectMenu(String key) {
    selectedMenuKey.value = key;
  }
}
