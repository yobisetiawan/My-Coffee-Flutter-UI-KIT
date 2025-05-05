import 'package:get/get.dart';

class ScanQRController extends GetxController {
  RxString result = "".obs;

   
  void setActiveMenu(String val) {
    result.value = val;
  }
}
