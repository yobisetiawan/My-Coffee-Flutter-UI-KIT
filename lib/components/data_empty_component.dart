import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DataEmptyComponent extends StatelessWidget {
  const DataEmptyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: SvgPicture.asset('assets/images/svg/data-empty.svg'),
        ),
        Text('Data kosong', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color:  Colors.grey.shade500)),
      ],
    );
  }
}
