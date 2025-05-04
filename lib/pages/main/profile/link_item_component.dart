import 'package:flutter/material.dart';

class LinkItemComponent extends StatelessWidget {
  final String label;
  final IconData? icon;
  final void Function()? onTap;

  const LinkItemComponent({
    super.key,
    required this.label,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.shade300,
              ),
              child: Icon(icon),
            ),
            SizedBox(width: 16),
            Text(label, style: TextStyle(fontSize: 16)),
            Spacer(),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
