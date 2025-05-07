import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/main/page.dart';
import 'package:myapp/routes.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs;
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

  Future<void> onSubmit() async {
    isLoading.value = true;

    Future.delayed(Duration(seconds: 1), () {
      Get.offAll(
        () => MainPage(),
        routeName: AppRoutes.main,
        transition: Transition.rightToLeft,
        duration: Duration(milliseconds: 600),
      );
    });
  }
}
