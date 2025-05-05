import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackBtnComponent extends StatelessWidget {
  const BackBtnComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
