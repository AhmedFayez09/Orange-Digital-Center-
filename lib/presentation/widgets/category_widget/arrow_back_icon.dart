import 'package:flutter/material.dart';

import '../../../constants/constant.dart';

class ArrowBackICon extends StatelessWidget {
  const ArrowBackICon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: primaryColor,
        size: 30,
      ),
    );
  }
}
