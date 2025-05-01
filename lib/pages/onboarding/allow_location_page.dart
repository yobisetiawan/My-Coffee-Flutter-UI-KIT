import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/routes.dart';

class AllowLocationPage extends StatelessWidget {
  const AllowLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Removes the shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back(); // Navigates to the previous page
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(
              width: 200,
              child: Image.asset('assets/images/icons/location.png'),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: Text.rich(
                TextSpan(
                  text: 'Enable ', // Normal text
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ), // Default style
                  children: [
                    TextSpan(
                      text: 'Location', // Bold text
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' to find nearby places!', // Normal text
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.offNamed(AppRoutes.register);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                child: const Text('Continue', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
