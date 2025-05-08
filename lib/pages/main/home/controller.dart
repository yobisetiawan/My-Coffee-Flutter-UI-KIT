import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class HomeController extends GetxController {
  final currentPage = 0.obs; // Reactive variable for the current page
  final List<String> images = [
    'https://images.unsplash.com/photo-1640525330110-131573ab5b9d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1673107240868-4757350fcde2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1673108852141-e8c3c22a4a22?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1496582490020-60c1344c64aa?q=80&w=2081&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1507914372368-b2b085b925a1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1556740767-414a9c4860c1?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1549931319-a545dcf3bc73?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  late final PageController pageController;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    _startAutoPlay();
  }

  void onPageChanged(int index) {
    currentPage.value = index; // Update the current page index
    _restartAutoPlay();
  }

  void _startAutoPlay() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (pageController.hasClients) {
        int nextPage = (currentPage.value + 1) % images.length;
        pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
        currentPage.value = nextPage;
      }
    });
  }

  void _restartAutoPlay() {
    _timer?.cancel(); // Cancel the current timer
    _startAutoPlay(); // Restart the timer
  }

  @override
  void onClose() {
    _timer?.cancel(); // Cancel the timer when the controller is disposed
    pageController.dispose();
    super.onClose();
  }

  Future<void> refreshData() async {
    // You can add your logic to reload data here
    // ignore: avoid_print
    print("Refreshing data...");
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay

    // TODO: Call your data fetching functions
  }
}
