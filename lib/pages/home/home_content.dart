import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/components/touchable_card_component.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's Do Lunch!",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            TouchableCardComponent(
              imageUrl: "https://placehold.co/900x340.png?text=Banner",
            ),
      
            SizedBox(height: 30),
            Text(
              "What would you like today?",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10, // Horizontal spacing between items
              runSpacing: 10, // Vertical spacing between rows
              children: List.generate(4, (index) {
                return SizedBox(
                  width:
                      MediaQuery.of(context).size.width / 2 -
                      120, // Half the screen width minus padding
      
                  child: TouchableCardComponent(
                    imageUrl: "https://placehold.co/400x300.png?text=Category $index",
                  ),
                );
              }),
            ),
            SizedBox(height: 30),
            Text(
              "Recomendations",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10, // Horizontal spacing between items
              runSpacing: 10, // Vertical spacing between rows
              children: List.generate(4, (index) {
                return SizedBox(
                  width:
                      MediaQuery.of(context).size.width / 2 -
                      120, // Half the screen width minus padding
                  child: TouchableCardComponent(
                    imageUrl: "https://placehold.co/400x300.png?text=Product $index",
                  ),
                );
              }),
            ),
            SizedBox(height: 10),
            TouchableCardComponent(
              imageUrl: "https://placehold.co/900x300.png?text=Banner",
            ),
            SizedBox(height: 250),
          ],
        ),
      ),
    );
  }
}
