import 'package:flutter/material.dart';
import 'package:myapp/pages/tier_teman_coffee/point_history/point_card_component.dart';

class PointHistoryPage extends StatelessWidget {
  const PointHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Point History'),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        children: [PointCardComponent()],
      ),
    );
  }
}
