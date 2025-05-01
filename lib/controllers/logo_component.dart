import 'package:flutter/material.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100), // Adjust the radius as needed
        child: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Text(
              'Failed to load image',
              style: TextStyle(color: Colors.red),
            );
          },
        ),
      ),
    );
  }
}
