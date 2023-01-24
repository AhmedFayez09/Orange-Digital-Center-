import 'package:flutter/material.dart';
import 'package:orange_workshop/constants/constant.dart';
import 'package:orange_workshop/data/remote/dio_helper.dart';
import 'package:orange_workshop/presentation/screens/auth/login/login_screen.dart';
import 'package:orange_workshop/presentation/screens/auth/register/sign_up.dart';
import 'package:orange_workshop/presentation/screens/layout/layout_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_categories/notes/add_nots.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_categories/notes/nots_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_setting/faq_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_setting/our_partners_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_setting/support_screen.dart';
import 'package:orange_workshop/presentation/screens/screens_layout/screens_setting/term_screen.dart';
import 'package:orange_workshop/presentation/screens/splash_screen.dart';

import 'package:sizer/sizer.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Orange Digital Center',
          theme: ThemeData().copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
                  primary: primaryColor,
                ),
          ),
          routes: {
            AddNots.routeName: (c) => AddNots(),
            NotsScreen.routName: (c) => NotsScreen(),
            LayoutScreen.routeName: (c) => LayoutScreen(),
            SplashScreen.routeName: (c) => SplashScreen(),
            RegisterScreen.routeName: (c) => RegisterScreen(),
            LoginScreen.routeName: (c) => LoginScreen(),
            FAQsScreen.routName: (c) => FAQsScreen(),
            OurPartnersScreen.routName: (c) => OurPartnersScreen(),
            SupportScreen.routName: (c) => SupportScreen(),
            TermssScreen.routName: (c) => TermssScreen(),
          },
          initialRoute: SplashScreen.routeName,
        );
      },
    );
  }
}
