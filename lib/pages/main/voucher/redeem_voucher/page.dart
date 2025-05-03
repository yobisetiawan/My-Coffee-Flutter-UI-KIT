import 'package:flutter/material.dart';
import 'package:myapp/pages/main/voucher/redeem_voucher/redeem_card_component.dart';

class RedeemVoucherTab extends StatelessWidget {
  const RedeemVoucherTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(children: [RedeemCardComponent()]),
    );
  }
}
