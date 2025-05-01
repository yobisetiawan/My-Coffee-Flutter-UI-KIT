import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/menu_category_item_component.dart';
import 'package:myapp/controllers/menu_app_controller.dart';

class MenuItem {
  final String title;
  final String key;
  final String iconPath;

  MenuItem({required this.title, required this.iconPath, required this.key});
}

final List<MenuItem> defaultMenu = [
  MenuItem(
    title: 'Home',
    key: 'home',
    iconPath: 'assets/images/icons/category1.png',
  ),
];

final List<MenuItem> menuItems = [
  MenuItem(
    title: 'Rewards',
    key: 'rewards',
    iconPath: 'assets/images/icons/category2.png',
  ),
  MenuItem(
    title: 'Deals',
    key: 'deals',
    iconPath: 'assets/images/icons/category3.png',
  ),
  MenuItem(
    title: 'Recent & Faves',
    key: 'recent_faves',
    iconPath: 'assets/images/icons/category3.png',
  ),
  MenuItem(
    title: 'Sandwitches & Meals',
    key: 'sandwitches_meals',
    iconPath: 'assets/images/icons/category3.png',
  ),
  MenuItem(
    title: 'Fries',
    key: 'fries',
    iconPath: 'assets/images/icons/category3.png',
  ),
  MenuItem(
    title: 'Happy Meals',
    key: 'happy_meals',
    iconPath: 'assets/images/icons/category3.png',
  ),
  MenuItem(
    title: 'Cafe Coffees',
    key: 'cafe_coffees',
    iconPath: 'assets/images/icons/category3.png',
  ),
  MenuItem(
    title: 'Sides & More',
    key: 'sides_more',
    iconPath: 'assets/images/icons/category3.png',
  ),
  MenuItem(
    title: 'Cafe Bakery',
    key: 'cafe_bakery',
    iconPath: 'assets/images/icons/category3.png',
  ),
  MenuItem(
    title: 'Sweets & Treats',
    key: 'sweets_treats',
    iconPath: 'assets/images/icons/category3.png',
  ),
];

class MainCategoryComponent extends StatelessWidget {
  const MainCategoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final MenuAppController menuController = Get.find<MenuAppController>();

    return Container(
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(
            color: Color(0xFFDDDDDD),
            width: 1, // Border width
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/icons/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          ...defaultMenu.map((item) {
            return Obx(() {
              return MenuCategoryItemComponent(
                title: item.title,
                imagePath: item.iconPath,
                isSelected: menuController.selectedMenuKey.value == item.key,
                onTap: () {
                  menuController.selectedMenuKey(item.key);
                },
              );
            });
          }),
          SizedBox(height: 15),
          ...menuItems.map((item) {
            return Obx(() {
              return MenuCategoryItemComponent(
                title: item.title,
                imagePath: item.iconPath,
                isSelected: menuController.selectedMenuKey.value == item.key,
                onTap: () {
                  menuController.selectedMenuKey(item.key);
                },
              );
            });
          }),
        ],
      ),
    );
  }
}
