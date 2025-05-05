import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class VoucerCardComponent extends StatelessWidget {
  final String text;
  const VoucerCardComponent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(6),
      dashPattern: const [4, 3],
      color: Colors.grey.shade400,
      strokeWidth: 1,
      child: Container(
        margin: EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: Colors.grey.shade100,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
