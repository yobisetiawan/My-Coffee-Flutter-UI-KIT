import 'package:flutter/material.dart';

class NumberedListComponent extends StatelessWidget {
  final List<String> strings;
  const NumberedListComponent({super.key, required this.strings});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(16, 15, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            strings.map((str) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\u2022', style: TextStyle(fontSize: 16, height: 1.55)),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      str,
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withValues(alpha: 0.6),
                        height: 1.55,
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
      ),
    );
  }
}
