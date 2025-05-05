import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/main/voucher/my_voucher/voucher_card_component.dart';
import 'package:myapp/routes.dart';

class MyVoucherTab extends StatelessWidget {
  const MyVoucherTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [GestureDetector(onTap: () {
        Get.toNamed(AppRoutes.voucherDetails);
      }, child: VoucherCardComponent())],
    );
  }
}
