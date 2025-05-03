import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/menu_item_cmponent.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/main/home/page.dart';
import 'package:myapp/pages/main/order_history/page.dart';
import 'package:myapp/pages/main/profile/page.dart';
import 'package:myapp/pages/main/voucher/page.dart';
import 'controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ctx = Get.put(MainController());

    return Scaffold(
      body: Stack(
        children: [
          //setup for home =>  HomePage(), profile= > ProfilePage(), voucher => VoucherPage(), order_history =>` OrderHistory()
          // Main content area
          Obx(() {
            switch (ctx.activeMenu.value) {
              case 'profile':
                return ProfilePage(); // Replace with ProfilePage()
              case 'voucher':
                return VoucherPage(); // Replace with VoucherPage()
              case 'order_history':
                return OrderPage(); // Replace with OrderHistoryPage()
              default:
                return HomePage(); // Default to HomePage
            }
          }),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 60,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 30,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.bgMenu,
                    //border: Border.all(color: Colors.white, width: 2), // Add border
                    borderRadius: BorderRadius.circular(
                      10,
                    ), // Optional: Rounded corners
                  ),
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuItemComponent(
                          icon: Icons.home,
                          isActive: ctx.activeMenu.value == 'home',
                          onTap: () {
                            print('home clicked');
                            ctx.setActiveMenu('home');
                          },
                        ),
                        MenuItemComponent(
                          icon: Icons.discount,
                          isActive: ctx.activeMenu.value == 'voucher',
                          onTap: () {
                            ctx.setActiveMenu('voucher');
                          },
                        ),
                        MenuItemComponent(),
                        MenuItemComponent(
                          icon: Icons.view_list,
                          isActive: ctx.activeMenu.value == 'order_history',
                          onTap: () {
                            ctx.setActiveMenu('order_history');
                          },
                        ),
                        MenuItemComponent(
                          icon: Icons.person,
                          isActive: ctx.activeMenu.value == 'profile',
                          onTap: () {
                            ctx.setActiveMenu('profile');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: MediaQuery.of(context).size.width / 2 - 30,
                  child: InkWell(
                    onTap: () {
                      print('Test');
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        //border: Border.all(color: Colors.white, width: 2), // Add border
                        borderRadius: BorderRadius.circular(
                          50,
                        ), // Optional: Rounded corners
                      ),
                      child: Center(
                        child: Icon(Icons.qr_code_rounded, size: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
