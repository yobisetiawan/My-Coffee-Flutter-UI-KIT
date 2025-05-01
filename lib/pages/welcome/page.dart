import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/welcome/controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WelcomeController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                100,
              ), // Adjust the radius as needed
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Text(
                    'Failed to load image',
                    style: TextStyle(color: Colors.red),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
