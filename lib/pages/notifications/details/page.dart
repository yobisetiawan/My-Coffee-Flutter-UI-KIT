import 'package:flutter/material.dart';
import 'package:myapp/components/image_network_component.dart';

class NotificationDetailsPage extends StatelessWidget {
  const NotificationDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ImageNetworkComponent(
                  url: "https://placehold.co/400x300.png?text=Banner",
                ),
              ),
              Text('test'),
            ],
          ),
        ),
      ),
    );
  }
}
