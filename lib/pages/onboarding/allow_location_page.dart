import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/btn_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/routes.dart';

class AllowLocationPage extends StatelessWidget {
  const AllowLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(
        backgroundColor: AppColor.bg,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
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
            SizedBox(height: 30),
            BtnComponent(
              text: 'Continue',
              onPressed: () {
                Get.offNamed(AppRoutes.register);
              },
            ),
          ],
        ),
      ),
    );
  }
}
