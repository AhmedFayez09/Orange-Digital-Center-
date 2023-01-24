import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import 'package:sizer/sizer.dart';

class TextFormFeildWidget extends StatelessWidget {
  TextFormFeildWidget({
    super.key,
    required this.text,
    required this.controller,
    required this.obscureText,
    required this.suffixIcon,
    required this.validator,
    this.maxLines,
  });

  final String text;
  final TextEditingController controller;
  final bool obscureText;
  final Widget suffixIcon;
  final int? maxLines;
  String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 3.h),
        TextFormField(
          validator: validator,
          autofocus: true,
          maxLines: maxLines,
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            label: Text(text),
            floatingLabelStyle: const TextStyle(color: Colors.orange),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide:
                  BorderSide(color: Colors.black.withOpacity(.2), width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: Colors.red, width: 2),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: Colors.red, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: Colors.orange, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
