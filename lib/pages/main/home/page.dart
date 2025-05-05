import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/data_empty_component.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/main/home/news_part.dart';
import 'package:myapp/routes.dart';
import 'controller.dart';
import 'loyalty_part.dart';
import 'title_part.dart';
import 'top_header_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
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
              NewsPart(),
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
