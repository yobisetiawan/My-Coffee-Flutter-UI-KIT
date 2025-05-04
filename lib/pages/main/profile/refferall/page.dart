import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/components/btn_component.dart';

class RefferalPage extends StatelessWidget {
  const RefferalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Refferral')),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'Gunakan Refferral code Anda di bawah ini untuk mendapatkan 200 points setiap teman Anda melakukan transksi pertama',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 50),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(6),
              dashPattern: const [4, 3],
              color: Colors.grey.shade400,
              strokeWidth: 1,
              child: Container(
                margin: EdgeInsets.all(4),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                color: Colors.grey.shade100,
                child: const Text(
                  '84QLRZ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: SvgPicture.asset('assets/images/svg/refferal.svg'),
            ),
            SizedBox(height: 20),
            BtnComponent(text: 'Share Code', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
