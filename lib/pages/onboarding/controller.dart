import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/routes.dart';

class SliderModel {
  String image;
  String title;
  String description;

  SliderModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0.obs;

  final List<SliderModel> slides = [
    SliderModel(
      image: 'assets/images/slider/pic1.jpg',
      title: 'Selamat Datang di My Coffee',
      description: 'Nikmati kehangatan kopi lokal khas sejak 1901.',
    ),
    SliderModel(
      image: 'assets/images/slider/pic2.jpg',
      title: 'Kumpulkan Poin Raih keuntungan',
      description:
          'Kumpulkan poin & tingkatkan tier loyality anda dengan setiap pesanan di My Coffee',
    ),
    SliderModel(
      image: 'assets/images/slider/pic3.jpg',
      title: 'Yuk Daftar Sekarang',
      description:
          'Daftar sekarang & nikmati berbagai promo menarik setiap hari.',
    ),
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
