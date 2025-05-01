import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/logo_component.dart';
import 'controller.dart';
import 'package:myapp/routes.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoComponent(),
            SizedBox(height: 20),
            Text(
              'Daftar untuk mendapakan  banyak Promo!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            SizedBox(height: 20),
            Text(
              'Isi dengan nomor handphone Anda',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Phone number text field with masking
            TextField(
              controller: controller.phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nomor Handphone',
                hintText: 'Contoh: 0812-3456-7890',
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Obx(
                () => ElevatedButton(
                  onPressed:
                      controller.isButtonEnabled.value
                          ? () {
                            Get.offNamed(AppRoutes.home);
                          }
                          : null, // Disable button when `isButtonEnabled` is false
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: const Text(
                    'Sign in / Daftar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
