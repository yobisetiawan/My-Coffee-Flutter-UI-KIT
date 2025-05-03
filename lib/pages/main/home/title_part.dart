import 'package:flutter/material.dart';

class TitlePart extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const TitlePart({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap != null
              ? GestureDetector(onTap: onTap, child: Text('View All'))
              : SizedBox(),
        ],
      ),
    );
  }
}
