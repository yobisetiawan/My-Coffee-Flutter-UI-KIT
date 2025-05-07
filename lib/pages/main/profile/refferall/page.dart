import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myapp/components/btn_component.dart';
import 'package:myapp/components/voucer_card_component.dart';
import 'package:share_plus/share_plus.dart';

class RefferalPage extends StatelessWidget {
  const RefferalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Refferral'), backgroundColor: Colors.white),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: [
          SizedBox(height: 30),
          Text(
            'Gunakan Refferral code Anda di bawah ini untuk mendapatkan 200 points setiap teman Anda melakukan transksi pertama',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [VoucerCardComponent(text: '8DSJ23')],
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: SvgPicture.asset('assets/images/svg/refferal.svg'),
          ),
          SizedBox(height: 20),
          BtnComponent(
            text: 'Share Code',
            onPressed: () async {
              try {
                await SharePlus.instance.share(ShareParams(text: '8DSJ23'));
              } catch (e) {
                Get.snackbar('Ups', "Something went wrong!");
              }
            },
          ),
        ],
      ),
    );
  }
}
