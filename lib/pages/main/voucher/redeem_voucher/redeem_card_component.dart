import 'package:flutter/material.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/config/app_color.dart';

class RedeemCardComponent extends StatelessWidget {
  const RedeemCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: ImageNetworkComponent(
              url: "https://placehold.co/500x200.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Voucher Unduh Aplikasi, Dapat Kopi Susu & Roti Kaya',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.primary),
                ),
                SizedBox(width: 3),
                Text('Point'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
