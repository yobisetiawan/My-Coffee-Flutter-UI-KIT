import 'package:flutter/material.dart';
import 'package:myapp/components/data_empty_component.dart';
import 'tier_card_component.dart';

class TierTemanCoffeePage extends StatelessWidget {
  const TierTemanCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tier Teman MyCoffee'),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        children: [
          TierCardComponent(),
          SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Text('History Voucher'),
              ),
            ],
          ),
          SizedBox(height: 20),
          DataEmptyComponent(),
        ],
      ),
    );
  }
}
