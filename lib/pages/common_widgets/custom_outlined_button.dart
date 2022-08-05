import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(fontSize: 22),
        ),
        style: OutlinedButton.styleFrom(
          primary: CustomColors.customContrastColor,
          side: BorderSide(
            color: CustomColors.customContrastColor,
          ),
        ),
      ),
    );
  }
}
