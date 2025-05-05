import 'package:flutter/material.dart';
import 'package:myapp/components/back_btn_component.dart';
import 'package:myapp/components/image_network_component.dart';
import 'package:myapp/components/numbered_list_component.dart';
import 'package:myapp/components/voucer_card_component.dart';

class VoucherDetailsPage extends StatelessWidget {
  const VoucherDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: ImageNetworkComponent(
                      url:
                          "https://plus.unsplash.com/premium_photo-1673108852141-e8c3c22a4a22?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(height: 30),
                        Text('Voucher Code'),
                        SizedBox(height: 10),
                        VoucerCardComponent(text: '8DSJ23'),
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
                              'Dapat digunakan di seluruh store My Coffee ',
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
    );
  }
}
