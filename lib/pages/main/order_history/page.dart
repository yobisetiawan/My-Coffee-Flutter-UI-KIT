import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/data_empty_component.dart';
import 'package:myapp/config/app_color.dart';
import 'package:myapp/pages/main/order_history/controller.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.put(OrderHistoryController());

    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              'Order History',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              color: AppColor.primary,
              onRefresh: ctr.refreshData,
              child: ListView(
                children: [
                  Container(
                    color: AppColor.bg,
                    width: double.infinity,
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.center, // Center vertically
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .center, // Center horizontally
                              children: const [
                                DataEmptyComponent(),
                                SizedBox(height: 100),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
