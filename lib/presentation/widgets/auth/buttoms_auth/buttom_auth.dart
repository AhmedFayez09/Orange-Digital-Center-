import 'package:flutter/material.dart';
import 'package:orange_workshop/presentation/widgets/auth/buttoms_auth/buttom_widget.dart';
import 'package:orange_workshop/presentation/widgets/auth/buttoms_auth/divider.dart';
import 'package:sizer/sizer.dart';
import '../../../../constants/constant.dart';


class ButtomAuth extends StatelessWidget {
  const ButtomAuth({
    super.key,
    required this.nameOutlineButtom,
    required this.onPressedOutlineButtom,
    required this.nameInlineButtom,
    required this.onPressedInlineButtom,
  });
  final String nameOutlineButtom;
  final void Function() onPressedOutlineButtom;
  final String nameInlineButtom;
  final void Function() onPressedInlineButtom;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(height: 4.h),
        ButtomWidget(
          text: nameInlineButtom,
          onPressed: onPressedInlineButtom,
          color: Colors.transparent,
          colorText: Colors.white,
          colorButtom: primaryColor,
          elevation: 1,
          colorOutLine: Colors.transparent,
          widthBorder: 0,
        ),
        const DividerWidget(),
        ButtomWidget(
          text: nameOutlineButtom,
          onPressed: onPressedOutlineButtom,
          color: primaryColor,
          colorText: primaryColor,
          colorButtom: Colors.transparent,
          elevation: 0,
          widthBorder: 2,
          colorOutLine: primaryColor,
        ),
         SizedBox(height: 4.h),
      ],
    );
  }
}
