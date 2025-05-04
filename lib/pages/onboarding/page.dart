import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/config/app_color.dart';
import 'controller.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());

    return Scaffold(
      backgroundColor: Colors.brown,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller.pageController,
            itemCount: controller.slides.length,
            onPageChanged: (index) {
              controller.currentPage.value = index;
            },
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  // Background image
                  Image.asset(
                    controller.slides[index].image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  // Black overlay with 50% opacity
                  Container(
                    color: Colors.black.withValues(alpha: 0.5),
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.slides[index].title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          controller.slides[index].description,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          // Indicators at the bottom
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.slides.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: controller.currentPage.value == index ? 24 : 10,
                    height: 8,
                    decoration: BoxDecoration(
                      color:
                          controller.currentPage.value == index
                              ? Colors.white
                              : Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // "Next" button
          Positioned(
            bottom: 20,
            right: 20,
            left: 20, // Make the button full-width when needed
            child: Obx(
              () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child:
                    controller.currentPage.value == controller.slides.length - 1
                        ? Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 0,
                          ), // Margin of 30 on left and right
                          width: double.infinity, // Full width
                          child: ElevatedButton(
                            key: const ValueKey('RegisterButton'),
                            onPressed: controller.nextPage,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.primary,
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 20),
                            ),
                            child: const Text(
                              'Register',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        )
                        : ElevatedButton(
                          key: const ValueKey('ArrowButton'),
                          onPressed: controller.nextPage,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primary,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.all(23),
                            shape: const CircleBorder(),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
