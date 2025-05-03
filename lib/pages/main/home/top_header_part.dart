import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/routes.dart';

class TopHeaderPart extends StatelessWidget {
  const TopHeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Good Morning!'),
                Text(
                  'Hi, yobi bina setiawan!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Icon(Icons.notifications_none, size: 36),
            onTap: (){
              Get.toNamed(AppRoutes.notifications);
            },
          ),
        ],
      ),
    );
  }
}
