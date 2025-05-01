import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Container()),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 60,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.brown,
              //border: Border.all(color: Colors.white, width: 2), // Add border
              borderRadius: BorderRadius.circular(
                10,
              ), // Optional: Rounded corners
            ),
          ),
          Positioned(
            top: -15,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amber,
                //border: Border.all(color: Colors.white, width: 2), // Add border
                borderRadius: BorderRadius.circular(
                  20,
                ), // Optional: Rounded corners
              ),
            ),
          ),
        ],
      ),
    );
  }
}
