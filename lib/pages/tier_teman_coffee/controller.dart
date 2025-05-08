import 'package:get/get.dart';
import 'dart:async';

class TireTemanController extends GetxController {
  Future<void> refreshData() async {
    // You can add your logic to reload data here
    // ignore: avoid_print
    print("Refreshing data...");
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay

    // TODO: Call your data fetching functions
  }
}
