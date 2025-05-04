import 'package:get/get.dart';

class HomeController extends GetxController {
  final currentPage = 0.obs; // Reactive variable for the current page
  final List<String> images = [
    'https://images.unsplash.com/photo-1640525330110-131573ab5b9d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1673107240868-4757350fcde2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://placehold.co/400x300.png?text=Banner3',
    'https://placehold.co/400x300.png?text=Banner4',
    'https://placehold.co/400x300.png?text=Banner5',
  ];

  void onPageChanged(int index) {
    currentPage.value = index; // Update the current page index
  }
}