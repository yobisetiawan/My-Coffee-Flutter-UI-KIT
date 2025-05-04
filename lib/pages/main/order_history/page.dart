import 'package:flutter/material.dart';
import 'package:myapp/components/data_empty_component.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text('Order History', style: TextStyle(fontSize: 20)),
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center vertically
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center horizontally
                children: const [DataEmptyComponent(), SizedBox(height: 100)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
