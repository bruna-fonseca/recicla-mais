import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class CustomButtonCollection extends StatelessWidget {
  const CustomButtonCollection({
    Key? key,
    required this.buttonLabel,
    required this.action,
  }) : super(key: key);

  final String buttonLabel;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_circle_right_rounded,
            size: 30,
            color: CustomColors.customSwatchColor,
          ),
          Text(
            buttonLabel,
            style: TextStyle(
              color: CustomColors.customSwatchColor,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
