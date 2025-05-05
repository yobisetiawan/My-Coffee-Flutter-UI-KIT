import 'package:flutter/material.dart';
import 'package:myapp/config/app_color.dart';

class MembershipTierPage extends StatelessWidget {
  const MembershipTierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Membership Tier'),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: AppColor.primary,
            tabs: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Tab(text: 'Sahabat'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Tab(text: 'Teman'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Tab(text: 'Keluarga'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Content for each tab
            Center(child: Text('Konten untuk Sahabat MyCoffee')),
            Center(child: Text('Konten untuk Teman MyCoffee')),
            Center(child: Text('Konten untuk Keluarga MyCoffee')),
          ],
        ),
      ),
    );
  }
}
