import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 20,
            bottom: 25,
          ),
          child: Column(
            children: [
              Text(
                'Olá,',
                style: TextStyle(
                  color: CustomColors.customContrastColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '[nome do usuário]',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Icon(
            Icons.person_outline,
            size: 50,
            color: CustomColors.customContrastColor,
          ),
        ),
      ],
    );
  }
}
