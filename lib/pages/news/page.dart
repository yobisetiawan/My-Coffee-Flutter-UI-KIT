import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/news/controller.dart';
import 'package:myapp/routes.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.put(NewsController());
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: RefreshIndicator(
        color: AppColor.primary,
        onRefresh: ctr.refreshData,
        child: ListView.builder(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          itemCount: ctr.images.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(
                  AppRoutes.newsDetails,
                  arguments: {'imageUrl': ctr.images[index]},
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white, // border color
                    width: 3, // border width
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .1), // shadow color
                      spreadRadius: 1, // how wide the shadow spreads
                      blurRadius: 6, // how blurry the shadow is
                      offset: Offset(
                        0,
                        1,
                      ), // changes position of shadow: (x, y)
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 180,

                    child: ImageNetworkComponent(
                      url: ctr.images[index], // Use the current image URL
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
