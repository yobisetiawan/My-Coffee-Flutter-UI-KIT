import 'package:flutter/material.dart';
import 'package:myapp/config/app_color.dart';

class MenuItemComponent extends StatelessWidget {
  final IconData? icon;
  final bool isActive;
  final void Function()? onTap;

  const MenuItemComponent({
    super.key,
    this.icon,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return InkWell(
        onTap: onTap,
        child: Container(
          width: 30, // Set a fixed width for the parent container
          height: 50,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Stack(
            children: [
              // Animated indicator
              Align(
                alignment: Alignment.topCenter,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 400), // Animation duration
                  height: 4, // Fixed height for the indicator
                  width: isActive ? 25 : 0, // Animate width
                  curve: Curves.easeInOut, // Smooth animation curve
                  decoration: BoxDecoration(
                    color: isActive ? AppColor.primary : Colors.transparent, // Animate color
                    borderRadius: BorderRadius.circular(5), // Rounded corners
                  ),
                ),
              ),
              // Icon
              Align(
                alignment: Alignment.center, // Center the icon
                child: Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Icon(
                    icon,
                    color: isActive ? AppColor.primary : Colors.grey, // Change icon color
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return const SizedBox(width: 30, height: 50);
  }
}