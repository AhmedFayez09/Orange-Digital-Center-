import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class TitleLayoutScreen extends StatelessWidget {
  const TitleLayoutScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2.h),
      ],
    );
  }
}
