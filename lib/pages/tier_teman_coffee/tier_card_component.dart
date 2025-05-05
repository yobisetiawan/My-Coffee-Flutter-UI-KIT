import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/routes.dart';

class TierCardComponent extends StatelessWidget {
  const TierCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.secondary,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white, // border color
          width: 3, // border width
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .2), // shadow color
            spreadRadius: 2, // how wide the shadow spreads
            blurRadius: 6, // how blurry the shadow is
            offset: Offset(0, 3), // changes position of shadow: (x, y)
          ),
        ],
        image: DecorationImage(
          image: AssetImage('assets/images/bg/bg1.png'),
          repeat: ImageRepeat.repeat, // Repeat the background image
          fit: BoxFit.none, // Prevent scaling of the image
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Loyalty balance',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.membershipTier);
                },
                child: Text(
                  "See benefit's",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                        size: 36,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),

          Container(
            width: 200,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  "20.000 points till yout next tier",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.pointHistory);
                },
                child: Text(
                  'view detail >',
                  style: TextStyle(color: AppColor.primary, fontSize: 11),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
