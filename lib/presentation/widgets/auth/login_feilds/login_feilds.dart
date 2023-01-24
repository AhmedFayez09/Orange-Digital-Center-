import 'package:flutter/material.dart';

import 'package:orange_workshop/presentation/widgets/auth/text_fo_fe_widget.dart';

import '../../../../constants/constant.dart';

class LoginFeilds extends StatefulWidget {
  String? Function(String?) validatorEmail;
  String? Function(String?) validatorPassword;

  LoginFeilds({required this.validatorEmail, required this.validatorPassword});
  @override
  State<LoginFeilds> createState() => _LoginFeildsState();
}

class _LoginFeildsState extends State<LoginFeilds> {
  bool isvisable = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFeildWidget(
          validator: widget.validatorEmail,
          maxLines: 1,
          text: 'E-Mail',
          controller: AppController.emailC,
          obscureText: false,
          suffixIcon: Container(
            width: 0,
          ),
        ),
        TextFormFeildWidget(
          validator: widget.validatorPassword,
          maxLines: 1,
          text: 'Password',
          controller: AppController.passwordC,
          obscureText: isvisable,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {});
              isvisable = !isvisable;
            },
            icon: isvisable
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.remove_red_eye),
          ),
        ),
      ],
    );
  }
}
