import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class LightGreenButton extends StatelessWidget {
  const LightGreenButton({
    Key? key,
    required this.title,
    this.action,
  }) : super(key: key);

  final String title;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: action ?? () {},
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: CustomColors.customContrastColor,
          elevation: 2,
        ),
      ),
    );
  }
}
