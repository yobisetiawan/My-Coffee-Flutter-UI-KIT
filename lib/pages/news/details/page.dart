import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/back_btn_component.dart';
import 'package:myapp/components/btn_component.dart';
import 'package:myapp/components/image_network_component.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = Get.arguments;
    final String imageUrl = args['imageUrl'];
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ImageNetworkComponent(url: imageUrl),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Unduh Aplikasi Dapat Kopi Susu dan Roti Kaya Gratis di MyCoffee Square2!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Untuk kamu yang pertama kali unduh aplikasi My Coffee, bisa langsung ngopi loh! Pilihannya ada Kopi Tagu, Kopi Klepon, atau Kopi Kingkit ',
                          style: TextStyle(fontSize: 16),
                        ),

                        SizedBox(height: 10),
                        Text('Caranya ', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                        Text(
                          'Setelah Daftar, Kalian Klaim Voucher dan Tukarkan Di Store MyCoffee Squere ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 80),
                ],
              ),

              BackBtnComponent(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        child: BtnComponent(
          text: 'Gratis Kopi Susu & Roti Kaya',
          onPressed: () {},
        ),
      ),
    );
  }
}
