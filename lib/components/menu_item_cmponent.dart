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
          width: 30,
          height: 50,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Stack(
            children: [
              Positioned(
                top: 3,
                left: 7,
                right: 7,
                child:
                    isActive
                        ? Container(
                          height: 4,
                          decoration: BoxDecoration(
                            color: AppColor.primary, // Set color to amber
                            borderRadius: BorderRadius.circular(
                              5,
                            ), // Rounded corners
                          ),
                        )
                        : SizedBox(),
              ),
              Align(
                alignment: Alignment.center, // Center the icon
                child: Container(
                  margin: EdgeInsets.only(top: 13),
                  child: Icon(icon, color: AppColor.primary,)
                ),
              ),
            ],
          ),
        ),
      );
    }

    return SizedBox(width: 30, height: 50);
  }
}
