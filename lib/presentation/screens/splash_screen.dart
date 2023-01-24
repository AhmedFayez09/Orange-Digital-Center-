import 'dart:async';
import 'package:flutter/material.dart';
import 'package:orange_workshop/presentation/widgets/auth/title_widget.dart';
import 'package:sizer/sizer.dart';

import 'auth/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, LoginScreen.routeName),
    );
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: FadeTransition(
          opacity: fadingAnimation!,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1,),
              SizedBox(height: 6.h),
              const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 100,
                  backgroundImage: AssetImage('assets/o.png')),
              const TitleWidget(fontSize: 35),
              const Spacer(flex: 2,),
              const CircularProgressIndicator(),
              SizedBox(height: 2.h),
              const Text('Loading...'),

              SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
    );
  }
}
