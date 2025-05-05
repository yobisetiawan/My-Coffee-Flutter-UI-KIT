import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/back_btn_component.dart';
import 'package:myapp/components/btn_component.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/components/numbered_list_component.dart';
import 'package:myapp/config/app_color.dart';

class RedeemDetailsPage extends StatelessWidget {
  const RedeemDetailsPage({super.key});

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
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'Voucher Unduh Aplikasi, Dapat Kopi Gratis!',
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
                                ],
                              ),
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.primary,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text('point', style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),

                        Text('Berakhir Dalam'),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text('17 Agustus 2025'),
                        ),
                        SizedBox(height: 30),
                        Text('Stock'),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text('50'),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(),
                  ),
                  Theme(
                    data: ThemeData().copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Syarat dan Ketentuan',
                        style: TextStyle(
                          color: Colors.brown[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: NumberedListComponent(
                            strings: [
                              'Sudah mendaftar sebagai member MyCoffee Coffee melalui aplikasi MyCoffee Coffee',
                              'Dapat digunakan di seluruh store MyCoffee Coffee',
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(),
                  ),
                  Theme(
                    data: ThemeData().copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.symmetric(horizontal: 20),
                      title: Text(
                        'Cara Penggunaan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: NumberedListComponent(
                            strings: [
                              'Sudah mendaftar sebagai member My Coffee melalui aplikasi My Coffee',
                              'Dapat digunakan di seluruh store My Coffee',
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(),
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
        child: BtnComponent(text: 'Redeem', onPressed: () {}),
      ),
    );
  }
}
