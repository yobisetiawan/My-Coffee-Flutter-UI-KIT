import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProfileController extends GetxController {
  var name = ''.obs;
  var email = ''.obs;
  var gender = 'Laki-Laki'.obs;
  var province = 'Jawa Barat'.obs;

  final genderOptions = ['Laki-Laki', 'Perempuan'];
  final provinceOptions = ['Jawa Barat', 'Jawa Tengah', 'Jawa Timur'];

  TextEditingController nameCtr = TextEditingController();
  TextEditingController emailCtr = TextEditingController();

  @override
  void onReady() {
    nameCtr.text = "Yobi Bina Setiawan";
    emailCtr.text = "yobi.studio@gmail.com";
    
    super.onReady();
  }
}
