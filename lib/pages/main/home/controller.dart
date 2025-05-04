import 'package:get/get.dart';

class HomeController extends GetxController {
  final currentPage = 0.obs; // Reactive variable for the current page
  final List<String> images = [
    'https://placehold.co/400x300.png?text=Banner1',
    'https://placehold.co/400x300.png?text=Banner2',
    'https://placehold.co/400x300.png?text=Banner3',
    'https://placehold.co/400x300.png?text=Banner4',
    'https://placehold.co/400x300.png?text=Banner5',
  ];

  void onPageChanged(int index) {
    currentPage.value = index; // Update the current page index
  }
}