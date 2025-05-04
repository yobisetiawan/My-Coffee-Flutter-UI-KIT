import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/data_empty_component.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/routes.dart';
import 'controller.dart';
import 'loyalty_part.dart';
import 'title_part.dart';
import 'top_header_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ctx = Get.put(HomeController());
    return SafeArea(
      child: Container(
        color: AppColor.bg,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              TopHeaderPart(),
              SizedBox(height: 5),
              LoyaltyPart(),
              SizedBox(height: 30),
              TitlePart(
                title: 'Berita Terbaru',
                onTap: () {
                  Get.toNamed(AppRoutes.news);
                },
              ),
              SizedBox(height: 10),

              Container(
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: ImageNetworkComponent(
                                url: ctx.images[index],
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
              ),

              //I want slider 5 images and there is indicator
              SizedBox(height: 30),
              TitlePart(title: 'Last Order'),
              DataEmptyComponent(),
              SizedBox(height: 140),
            ],
          ),
        ),
      ),
    );
  }
}
