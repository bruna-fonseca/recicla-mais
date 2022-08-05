import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    this.action,
  }) : super(key: key);

  final String title;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: Text(
        title,
        style: TextStyle(
            color: CustomColors.customSwatchColor,
            fontSize: 23,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
