import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/notifications/notif_item_component.dart';
import 'package:myapp/routes.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          NotifItemComponent(
            onTap: () {
              Get.toNamed(AppRoutes.notificationDetails);
            },
            title: 'Selamat Anda mendapatkan Voucher',
            description: 'Vouncher Unduh Aplikasi, Dapat Kopi Gratis! adalah',
            date: '8 hari yang lalu - 24 Apr 2025',
          ),
        ],
      ),
    );
  }
}
