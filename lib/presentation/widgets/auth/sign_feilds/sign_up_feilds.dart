
import 'package:flutter/material.dart';
import 'package:orange_workshop/presentation/widgets/auth/text_fo_fe_widget.dart';

import '../../../../constants/constant.dart';

class SignUpFeilds extends StatefulWidget {

String? Function(String?)  validatorName;
String? Function(String?)  validatorEmail;
String? Function(String?)  validatorPassword;
String? Function(String?)  validatorConfirmPassword;
String? Function(String?)  validatorPhone;


SignUpFeilds(
      {required this.validatorName,
      required this.validatorEmail,
      required this.validatorPassword,
      required this.validatorConfirmPassword,
      required this.validatorPhone});

  @override
  State<SignUpFeilds> createState() => _SignUpFeildsState();
}

class _SignUpFeildsState extends State<SignUpFeilds> {
   bool isvisable = false;
  bool isvisableConfirm = false;
  @override
  Widget build(BuildContext context) {
    return Column
    (
      children: [
          TextFormFeildWidget(
            validator: widget.validatorName,
            maxLines: 1,
                  text: 'Name',
                  controller: AppController.nameC,
                  obscureText: false,
                  suffixIcon: Container(width: 0),
                ),
                TextFormFeildWidget(
                  validator: widget.validatorEmail,
                  maxLines: 1,
                  text: 'E-Mail',
                  controller: AppController.emailC,
                  obscureText: false,
                  suffixIcon: Container(width: 0),
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
                TextFormFeildWidget(
                  validator: widget.validatorConfirmPassword,
                  maxLines: 1,
                  text: 'Confirm Password',
                  controller: AppController.confirmPassC,
                  obscureText: isvisableConfirm,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {});
                      isvisableConfirm = !isvisableConfirm;
                    },
                    icon: isvisableConfirm
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.remove_red_eye),
                  ),
                ),
                TextFormFeildWidget(
                  validator: widget.validatorPhone,
                  maxLines: 1,
                  text: 'Phone Number',
                  controller: AppController.phoneC,
                  obscureText: false,
                  suffixIcon: Container(width: 0),
                ),
                
      ],
    );
  }
}