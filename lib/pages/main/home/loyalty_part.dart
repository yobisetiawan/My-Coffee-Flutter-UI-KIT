import 'package:flutter/material.dart';
import 'package:myapp/config/app_color.dart';

class LoyaltyPart extends StatelessWidget {
  const LoyaltyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColor.secondary,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/bg/bg1.png'),
                repeat: ImageRepeat.repeat, // Repeat the background image
                fit: BoxFit.none, // Prevent scaling of the image
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Loyalty',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
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
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 36,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              children: [
                Icon(Icons.beenhere_sharp, color: Colors.white),
                SizedBox(width: 4),
                Text(
                  'Teman My Coffee',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text("See Benefit's", style: TextStyle(color: Colors.white)),
                SizedBox(width: 4),
                Icon(Icons.arrow_forward_ios, size: 14, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
