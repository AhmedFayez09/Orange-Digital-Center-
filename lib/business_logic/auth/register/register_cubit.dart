

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/business_logic/auth/register/register_state.dart';
import 'package:orange_workshop/constants/end_point.dart';
import 'package:orange_workshop/data/remote/dio_helper.dart';

import '../../../constants/constant_methodes.dart';
import '../../../presentation/screens/layout/layout_screen.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  bool visiblePassword = false;
  bool visibleConfirmPassword = false;

  /// function to change password visibility
  void changePasswordVisibility() {
    visiblePassword = !visiblePassword;
    emit(VisiblePasswordState());
  }

  /// function to change password visibility
  void changeConfirmPasswordVisibility() {
    visibleConfirmPassword = !visibleConfirmPassword;
    emit(VisibleConfirmPasswordState());
  }

  String gender = 'm';

  void changeGender(value) {
    gender = value;
    emit(ChangeGenderState());
  }

  Future PostRegister(
      {required String name,
      required String email,
      required String password,
      required String phoneNumber,
      required String gender,
      context}) async {
    emit(RegisterLoadingState());



    DioHelper.postData(url: registerEndPoint, data: {
      "name": name,
      "email": email,
      "password": password,
      "phoneNumber": phoneNumber,
      "gender": gender,
    }).then((value) {
      if (value.statusCode == 200) {
        flutterToast(msg: 'Registered Successfully', color: Colors.green);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LayoutScreen()),
            (route) => false);
        emit(RegisterSuccessState());
      }
    }).catchError((error) {
      flutterToast(msg: 'Registered Failed', color: Colors.green);
      if (kDebugMode) {
        print(error.toString());
      }
      emit(RegisterErrorState());
    });
  }
}
