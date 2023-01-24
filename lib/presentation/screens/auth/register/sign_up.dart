import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/business_logic/auth/register/register_state.dart';
import 'package:orange_workshop/constants/constant.dart';
import 'package:orange_workshop/presentation/widgets/auth/details_gender_unevisity.dart/details_of_gender_university.dart';
import 'package:orange_workshop/presentation/widgets/auth/name_screen.dart';
import 'package:orange_workshop/presentation/widgets/auth/sign_feilds/sign_up_feilds.dart';
import 'package:orange_workshop/presentation/widgets/auth/title_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../../business_logic/auth/register/register_cubit.dart';
import '../../../../constants/constant_methodes.dart';
import '../../../widgets/auth/buttoms_auth/buttom_auth.dart';
import '../../layout/layout_screen.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = 'register';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> ketFormValidation = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => RegisterCubit(),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            var cubit = RegisterCubit.get(context);
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
                        const NameScreen(text: 'Sign UP'),
                        SignUpFeilds(
                          validatorName: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter Name";
                            }
                          },
                          validatorEmail: (val) {
                            bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(AppController.emailC.text);
                            if (val!.isEmpty) {
                              return 'Please fill Email';
                            } else if (emailValid == false) {
                              return 'Enter valid email';
                            }
                          },
                          validatorPassword: (val) {
                            if (val!.isEmpty || val.length < 6) {
                              return 'valid password';
                            }
                          },
                          validatorConfirmPassword: (val) {
                            bool confirmPassword = RegExp(val!)
                                .hasMatch(AppController.passwordC.text);
                            if (val.isEmpty) {
                              return 'Please Enter Password';
                            } else if (val.length < 6) {
                              return 'Please Enter Password Greater than 6 character';
                            } else if (confirmPassword == false) {
                              return 'Not Match Password';
                            }
                          },
                          validatorPhone: (val) {
                            if (val!.isEmpty) {
                              return 'Please Enter PhoneNumber';
                            }
                          },
                        ),
                        SizedBox(height: 4.h),
                        const DetailsOfGenderAndUniversity(),
                        ButtomAuth(
                          nameInlineButtom: 'Sign UP',
                          nameOutlineButtom: 'Login',
                          onPressedInlineButtom: () {
                            // if (ketFormValidation.currentState!.validate()) {
                            //   cubit.PostRegister(
                            //     name: AppController.nameC.text,
                            //     email: AppController.emailC.text,
                            //     password: AppController.passwordC.text,
                            //     phoneNumber: AppController.confirmPassC.text,
                            //     gender: 'm',
                            //   );
                            flutterToast(msg: 'Registered Successfully', color: Colors.green);
                              Navigator.pushReplacementNamed(
                                  context, LayoutScreen.routeName);
                            // }
                          },
                          onPressedOutlineButtom: () {
                            Navigator.pushReplacementNamed(
                                context, LoginScreen.routeName);
                          },
                        ),
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
