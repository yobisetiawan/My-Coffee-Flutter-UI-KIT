import 'package:flutter/material.dart';

class PointCardComponent extends StatelessWidget {
  const PointCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                // Icon Circle
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.attach_money,
                    color: Colors.orange,
                    size: 20,
                  ),
                ),
                SizedBox(width: 12),

                // Minus sign and Points
                Row(
                  children: [
                    Icon(Icons.remove, color: Colors.red, size: 16),
                    SizedBox(width: 4),
                    Text(
                      '0 Points',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                Spacer(),

                // Right Text: Voucher
                Text(
                  'Voucher',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),

          // Bottom Divider
          Divider(height: 1, thickness: 1, color: Colors.grey.shade200),
        ],
      ),
    );
  }
}
