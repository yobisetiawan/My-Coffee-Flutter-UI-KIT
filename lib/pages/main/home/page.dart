import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/data_empty_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/main/home/loyalty_part.dart';
import 'package:myapp/pages/main/home/title_part.dart';
import 'package:myapp/pages/main/home/top_header_part.dart';
import 'package:myapp/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
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
                height: 200,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
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
