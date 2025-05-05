import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/btn_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/components/logo_component.dart';
import 'package:myapp/pages/main/page.dart';
import 'controller.dart';
import 'package:myapp/routes.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height, // Full screen height
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              constraints: BoxConstraints(
                maxWidth: 400, // Optional: Limit width for larger screens
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoComponent(),
                  SizedBox(height: 20),
                  Text(
                    'Daftar untuk mendapatkan banyak Promo!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Isi dengan nomor handphone Anda',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: controller.phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Nomor Handphone',
                      hintText: 'Contoh: 0812-3456-7890',
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: Obx(
                      () => BtnComponent(
                        text: 'Sign in / Daftar',
                        onPressed:
                            controller.isButtonEnabled.value
                                ? () {
                                  Get.offAll(
                                    () => MainPage(),
                                    routeName: AppRoutes.main,
                                    transition: Transition.rightToLeft,
                                    duration: Duration(milliseconds: 600),
                                  );
                                }
                                : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
