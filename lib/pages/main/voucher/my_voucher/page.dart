import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/main/voucher/my_voucher/controller.dart';
import 'package:myapp/pages/main/voucher/my_voucher/voucher_card_component.dart';
import 'package:myapp/routes.dart';

class MyVoucherTab extends StatelessWidget {
  const MyVoucherTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.put(MyVoucherController());
    return RefreshIndicator(
      color: AppColor.primary,
      onRefresh: ctr.refreshData,
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.voucherDetails);
            },
            child: VoucherCardComponent(),
          ),
        ],
      ),
    );
  }
}
