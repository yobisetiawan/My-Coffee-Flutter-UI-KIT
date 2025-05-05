import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/main/home/controller.dart';
import 'package:myapp/routes.dart';

class NewsPart extends StatelessWidget {
  const NewsPart({super.key});

  @override
  Widget build(BuildContext context) {
    final ctx = Get.find<HomeController>();

    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: ctx.pageController,
              onPageChanged: ctx.onPageChanged,
              itemCount: ctx.images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ), // Add space between images
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(
                        AppRoutes.newsDetails,
                        arguments: {'imageUrl': ctx.images[index]},
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ImageNetworkComponent(url: ctx.images[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          // Indicator
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                ctx.images.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: ctx.currentPage.value == index ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color:
                        ctx.currentPage.value == index
                            ? AppColor.primary
                            : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
