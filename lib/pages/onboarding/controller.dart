import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/routes.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0.obs;

  final List<String> slides = [
    'assets/images/slider/pic1.jpg',
    'assets/images/slider/pic2.jpg',
    'assets/images/slider/pic3.jpg',
  ];

  void nextPage() {
    if (currentPage.value < slides.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.toNamed(AppRoutes.allowNotification);
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
