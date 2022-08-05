import 'package:flutter/material.dart';

class ReciclaLogo extends StatelessWidget {
  const ReciclaLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/recicla-logo.jpeg',
      height: 30,
    );
  }
}
