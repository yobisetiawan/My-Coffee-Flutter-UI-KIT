import 'package:flutter/material.dart';
import 'package:myapp/pages/main/voucher/my_voucher/voucher_card_component.dart';

class MyVoucherTab extends StatelessWidget {
  const MyVoucherTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(children: [VoucherCardComponent()]),
    );
  }
}
