import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myapp/models/product.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs; // Observable list of products

  @override
  void onInit() {
    super.onInit();
    loadProducts(); // Load products when the controller is initialized
  }

  Future<void> loadProducts() async {
    try {
      // Load the JSON file from assets
      final String jsonString = await rootBundle.loadString(
        'assets/data/product_drinks.json',
      );
      final List<dynamic> jsonData = json.decode(jsonString);
      // Convert JSON data to a list of Product objects
      products.value = jsonData.map((item) => Product.fromJson(item)).toList();
    } catch (e) {
      print('Error loading products: $e');
    }
  }
}
