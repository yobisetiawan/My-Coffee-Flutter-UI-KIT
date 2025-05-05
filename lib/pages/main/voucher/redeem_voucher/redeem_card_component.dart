import 'package:flutter/material.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/config/app_color.dart';

class RedeemCardComponent extends StatelessWidget {
  const RedeemCardComponent({super.key});

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
              child: ImageNetworkComponent(
                url:
                    "https://images.unsplash.com/photo-1549931319-a545dcf3bc73?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
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
