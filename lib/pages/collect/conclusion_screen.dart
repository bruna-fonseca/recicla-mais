import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/pages/home/home_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ConclusionScreen extends StatefulWidget {
  const ConclusionScreen({Key? key}) : super(key: key);

  @override
  State<ConclusionScreen> createState() => _ConclusionScreenState();
}

class _ConclusionScreenState extends State<ConclusionScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (c) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/success.json'),
                SizedBox(
                  height: 35,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        'Reciclagem concluída',
                        textStyle: TextStyle(
                          color: CustomColors.customSwatchColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
