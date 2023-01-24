import 'package:flutter/material.dart';
import '../../../../constants/constant.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.colorText,
    required this.colorButtom,
    required this.elevation,
    required this.colorOutLine, required this.widthBorder,
  });
  final Color color;
  final Color colorText;
  final Color colorButtom;
  final Color colorOutLine;
  final double elevation;
  final double widthBorder;
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 50,
      elevation: elevation,
      color: colorButtom,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide:  BorderSide(color:colorOutLine,width: widthBorder)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: colorText),
      ),
    );
  }
}
