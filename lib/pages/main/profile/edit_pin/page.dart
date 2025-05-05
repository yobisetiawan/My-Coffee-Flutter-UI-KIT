import 'package:flutter/material.dart';
import 'package:myapp/components/pin_component.dart';
import 'package:myapp/config/app_color.dart';

class EditPinPage extends StatelessWidget {
  const EditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(title: Text('Edit PIN'), backgroundColor: Colors.white),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Icon(Icons.lock, size: 48, color: Colors.amber),
            SizedBox(height: 20),
            Text('Masukan PIN Sekarang Anda', style: TextStyle(fontSize: 18)),
            SizedBox(height: 24),
            SizedBox(height: 500, child: PinComponent()),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
