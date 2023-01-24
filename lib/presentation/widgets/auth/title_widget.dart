import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.fontSize});
final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.h),
        RichText(
          text:  TextSpan(
            children: [
              TextSpan(
                text: 'Orange',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' Digital Center',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
