import 'package:flutter/material.dart';
import 'package:myapp/components/image_network_component.dart';

class MembershipTierPage extends StatelessWidget {
  const MembershipTierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membership Tier'),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: double.infinity,
                height: 180,
                child: ImageNetworkComponent(
                  url: "https://placehold.co/400x300.png?text=Banner",
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
