import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final MaskedTextController phoneController = MaskedTextController(
    mask: '0000-0000-0000',
  );

  // Reactive variable to track if the button should be enabled
  var isButtonEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Listen to changes in the phoneController's text
    phoneController.addListener(() {
      isButtonEnabled.value = phoneController.text.isNotEmpty;
    });
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}