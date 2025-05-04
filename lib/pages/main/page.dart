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

    // Map activeMenu values to corresponding pages
    final Map<String, Widget> pages = {
      'home': const HomePage(),
      'voucher': const VoucherPage(),
      'order_history': const OrderPage(),
      'profile': const ProfilePage(),
    };

    return Scaffold(
      backgroundColor: AppColor.bg,
      body: Stack(
        children: [
          // AnimatedSwitcher for smooth transitions
          Obx(
            () => AnimatedSwitcher(
              duration: const Duration(milliseconds: 200), // Animation duration
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation, // Fade animation
                  child: child,
                );
              },
              child: pages[ctx.activeMenu.value] ?? const HomePage(),
            ),
          ),
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
                      20,
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
                    onTap: () {},
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
