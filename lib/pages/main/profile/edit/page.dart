import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/btn_component.dart';

import 'package:myapp/pages/main/profile/edit/controller.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateProfileController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        children: [
          // Name TextField
          TextField(
            onChanged: (value) => controller.name.value = value,
            controller: controller.nameCtr,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Nama Lengkap',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            style: TextStyle(
              fontWeight: FontWeight.bold, // Make the text bold
            ),
          ),
          SizedBox(height: 20),

          // Email TextField
          TextField(
            onChanged: (value) => controller.email.value = value,
            controller: controller.emailCtr,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            style: TextStyle(
              fontWeight: FontWeight.bold, // Make the text bold
            ),
          ),
          SizedBox(height: 20),

          // Gender Dropdown
          Obx(
            () => DropdownButtonFormField<String>(
              value: controller.gender.value,
              items:
                  controller.genderOptions.map((item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList(),
              onChanged: (value) => controller.gender.value = value!,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Province Dropdown
          Obx(
            () => DropdownButtonFormField<String>(
              value: controller.province.value,
              items:
                  controller.provinceOptions.map((item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList(),
              onChanged: (value) => controller.province.value = value!,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: BtnComponent(text: 'Submit', onPressed: () {}),
      ),
    );
  }
}
