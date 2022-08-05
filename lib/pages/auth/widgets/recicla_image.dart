import 'package:flutter/material.dart';

class ReciclaImage extends StatelessWidget {
  const ReciclaImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/recicla+.jpeg',
        fit: BoxFit.contain,
        height: 180.0,
        width: 180.0,
      ),
    );
  }
}
