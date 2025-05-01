import 'package:flutter/material.dart';

class TouchableCardComponent extends StatelessWidget {
  final String imageUrl;
  final String? title;
  final double? price;

  const TouchableCardComponent({
    super.key,
    required this.imageUrl,
    this.title,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            10,
          ), // Adjust the radius as needed
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Text(
                'Failed to load image',
                style: TextStyle(color: Colors.red),
              );
            },
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                print("TouchableCardComponent tapped!");
              },
            ),
          ),
        ),
      ],
    );
  }
}
