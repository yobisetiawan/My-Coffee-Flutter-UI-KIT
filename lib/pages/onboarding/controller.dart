// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/auth/register/page.dart';
import 'package:myapp/routes.dart';
import 'package:permission_handler/permission_handler.dart';

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
  var isLoadingNotif = false.obs;
  var isLoadingLoc = false.obs;

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

  Future<void> requestNotificationPermission() async {
    isLoadingNotif.value = true;

    var status = await Permission.notification.status;

    if (status.isDenied || status.isPermanentlyDenied) {
      // Request permission
      final result = await Permission.notification.request();

      if (result.isGranted) {
        print("Notification permission granted.");
      } else {
        print("Notification permission denied.");
      }
    } else {
      print("Notification permission already granted.");
    }

    Future.delayed(Duration(seconds: 1), () {
      Get.toNamed(AppRoutes.allowLocation);
    });
  }

  Future<void> requestLocationPermission() async {
    isLoadingLoc.value = true;
    var status = await Permission.location.status;

    if (status.isDenied || status.isPermanentlyDenied) {
      // Request permission
      final result = await Permission.location.request();

      if (result.isGranted) {
        print("Location permission granted.");
      } else {
        print("Location permission denied.");
      }
    } else {
      print("Location permission already granted.");
    }

    Future.delayed(Duration(seconds: 1), () {
      Get.offAll(
        () => RegisterPage(),
        routeName: AppRoutes.register,
        transition: Transition.rightToLeft,
        duration: Duration(milliseconds: 600),
      );
    });
  }
}
