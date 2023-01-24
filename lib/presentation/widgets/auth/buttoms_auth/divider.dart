import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        SizedBox(height: 2.h),
        Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 34.w,
                          color: Colors.black,
                          height: 1,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'OR',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 34.w,
                          color: Colors.black,
                          height: 1,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
      ],
    );
                
  }
}