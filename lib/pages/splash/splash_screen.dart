import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:recicla_mais/pages/auth/sign_in_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: 'assets/recicla+.png',
        nextScreen: const SigninPage(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
