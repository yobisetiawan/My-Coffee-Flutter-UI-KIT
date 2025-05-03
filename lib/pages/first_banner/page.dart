import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/pages/first_banner/controller.dart';

class FirstBanner extends StatelessWidget {
  const FirstBanner({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FirstBannerController());

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ImageNetworkComponent(
          url: "https://placehold.co/340x900.png?text=First Time Banner",
        ),
      ),
    );
  }
}
