import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/main/voucher/redeem_voucher/controller.dart';
import 'package:myapp/pages/main/voucher/redeem_voucher/redeem_card_component.dart';
import 'package:myapp/routes.dart';

class RedeemVoucherTab extends StatelessWidget {
  const RedeemVoucherTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.put(ReedemVoucherController());

    return SizedBox(
      width: double.infinity,
      child: RefreshIndicator(
        color: AppColor.primary,
        onRefresh: ctr.refreshData,
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 150),
          itemCount: ctr.images.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(
                  AppRoutes.redeemDetails,
                  arguments: {'imageUrl': ctr.images[index]},
                );
              },
              child: RedeemCardComponent(imageUrl: ctr.images[index]),
            );
          },
        ),
      ),
    );
  }
}
