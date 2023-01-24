import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/business_logic/auth/login/login_cubit.dart';

import 'package:orange_workshop/presentation/widgets/auth/login_feilds/login_feilds.dart';
import 'package:orange_workshop/presentation/widgets/auth/name_screen.dart';
import 'package:orange_workshop/presentation/widgets/auth/text_buttom_widget.dart';
import 'package:orange_workshop/presentation/widgets/auth/title_widget.dart';
import '../../../widgets/auth/buttoms_auth/buttom_auth.dart';
import '../../layout/layout_screen.dart';
import '../register/sign_up.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> ketFormValidation = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            var cubit = LoginCubit.get(context);
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: ketFormValidation,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TitleWidget(fontSize: 35),
                        const NameScreen(text: 'Login'),
                        LoginFeilds(
                          validatorEmail: (val) {
                            if (val!.isEmpty) {
                              return 'Please Fill Failed';
                            }
                          },
                          validatorPassword: (val) {
                            if (val!.isEmpty) {
                              return 'Please Fill Failed';
                            }
                          },
                        ),
                        TextButtomWidget(
                            text: 'Forgot Password?', onPressed: () {}),
                        const SizedBox(height: 40),
                        SizedBox(),
                        ButtomAuth(
                          nameInlineButtom: 'Login',
                          nameOutlineButtom: 'Sign UP',
                          onPressedInlineButtom: () {
                            if (ketFormValidation.currentState!.validate()) {}

                            // Navigator.pushReplacementNamed(
                            //     context, LayoutScreen.routeName);
                          },
                          onPressedOutlineButtom: () {
                            Navigator.pushReplacementNamed(
                                context, RegisterScreen.routeName);
                          },
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
