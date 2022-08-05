import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class TitleSettingOption extends StatelessWidget {
  const TitleSettingOption({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ],
          color: const Color(0xffFFFBFB),
          borderRadius: BorderRadius.circular(50),
        ),
        height: 70,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: CustomColors.customSwatchColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
