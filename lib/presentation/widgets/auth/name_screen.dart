import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
         SizedBox(height: 1.h),
      ],
    );
  }
}
