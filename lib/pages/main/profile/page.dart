import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/btn_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/main/profile/label_value_component.dart';
import 'package:myapp/pages/main/profile/link_item_component.dart';
import 'package:myapp/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text('Profile', style: TextStyle(fontSize: 20)),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    LabelValueComponent(
                      label: 'Name',
                      value: 'Yobi Bina Setiawan',
                    ),
                    Divider(),
                    LabelValueComponent(
                      label: 'Email',
                      value: 'yobi.studio@gmail.com',
                    ),
                    Divider(),
                    LabelValueComponent(
                      label: 'No. Hp',
                      value: '+629999999888',
                    ),
                    Divider(),
                    LabelValueComponent(
                      label: 'Tanggal Lahir',
                      value: '10 Jan 1990',
                    ),
                    Divider(),
                    LabelValueComponent(label: 'Wilayah', value: 'Jawa Barat'),
                    Divider(),
                    LabelValueComponent(label: 'Gender', value: 'Laki-Laki'),
                    Divider(),
                    LinkItemComponent(
                      label: 'Show Referral',
                      icon: Icons.share,
                      onTap: () {
                        Get.toNamed(AppRoutes.refferal);
                      },
                    ),
                    Divider(),
                    LinkItemComponent(
                      label: 'Edit Profile',
                      icon: Icons.edit,
                      onTap: () {
                        Get.toNamed(AppRoutes.editProfile);
                      },
                    ),
                    Divider(),
                    LinkItemComponent(
                      label: 'Change Pin',
                      icon: Icons.lock,
                      onTap: () {
                        Get.toNamed(AppRoutes.editPin);
                      },
                    ),
                    Divider(),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: BtnComponent(
                        text: 'Logout',
                        onPressed: () {},
                        color: AppColor.danger,
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
