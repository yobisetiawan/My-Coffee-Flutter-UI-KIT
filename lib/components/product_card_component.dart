import 'package:flutter/material.dart';

class ProductCardComponent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;

  const ProductCardComponent({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFDDDDDD), // Light gray border (#DDD)
              width: 1, // Border width
            ),
            borderRadius: BorderRadius.circular(6), // Rounded corners
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    6,
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
              ),
              Text(title, textAlign: TextAlign.center),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Rp ", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    price.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
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
