import 'package:flutter/material.dart';

class LabelValueComponent extends StatelessWidget {
  final String label;
  final String value;

  const LabelValueComponent({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(label),
          Spacer(),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
