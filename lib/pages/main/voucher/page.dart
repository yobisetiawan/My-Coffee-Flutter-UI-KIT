import 'package:flutter/material.dart';
import 'package:myapp/config/app_color.dart';
import 'my_voucher/page.dart';
import 'redeem_voucher/page.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 2, // Number of tabs
          child: Column(
            children: [
              // Custom TabBar
              Container(
                padding: EdgeInsets.only(top: 20),
                color: Colors.white, // Background color for the TabBar
                child: const TabBar(
                  labelColor: Colors.black,
                  indicatorColor: AppColor.primary,
                  tabs: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Tab(text: 'Redeem Voucher'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Tab(text: 'My Voucher'),
                    ),
                  ],
                ),
              ),
              // TabBarView content
              Expanded(
                child: Container(
                  color: AppColor.bg,
                  child: TabBarView(
                    children: [RedeemVoucherTab(), MyVoucherTab()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
