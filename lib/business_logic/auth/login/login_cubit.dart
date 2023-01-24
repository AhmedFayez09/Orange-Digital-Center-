import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_workshop/constants/end_point.dart';
import 'package:orange_workshop/data/model/auth/login_model.dart';
import 'package:orange_workshop/data/remote/dio_helper.dart';

import '../../../constants/constant_methodes.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool visiblePassword = false;

  void changePasswordVisibility() {
    visiblePassword = !visiblePassword;
    emit(PasswordVisibilityState());
  }

  void postLogin({required String email, required String password, context}) {
    emit(LoginLoadingState());
    DioHelper.postData(url: loginEndPoint, data: {
      'email': email,
      'password': password,
    }).then((value) {
      if (value.statusCode == 200) {
        emit(LoginSuccessState(loginModel: LoginModel.fromJson(value.data)));
      }
    }).catchError((error){
      flutterToast(msg: 'Login Failed', color: Colors.green);
      if (kDebugMode) {
        print(error);
      }
      emit(LoginErrorState());
    });
  }
}
