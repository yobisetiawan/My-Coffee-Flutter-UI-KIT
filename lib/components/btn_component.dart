import 'package:flutter/material.dart';
import 'package:myapp/config/app_color.dart';

class BtnComponent extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? color;
  final Color? textColor;
  const BtnComponent({
    super.key,
    required this.text,
    this.onPressed,
    this.color = AppColor.primary,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
        ),
        child: Text(text, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
