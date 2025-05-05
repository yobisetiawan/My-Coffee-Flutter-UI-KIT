import 'package:flutter/material.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/config/app_color.dart';

class RedeemCardComponent extends StatelessWidget {
  final String imageUrl;
  const RedeemCardComponent({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
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
            offset: Offset(0, 1), // changes position of shadow: (x, y)
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: SizedBox(
              height: 150,
              width: double.infinity,
              child: ImageNetworkComponent(url: imageUrl),
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
                  "1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: AppColor.primary,
                  ),
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
