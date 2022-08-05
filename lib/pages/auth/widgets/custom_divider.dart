import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              height: 5,
              color: CustomColors.customSwatchColor,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              'ou',
              style: TextStyle(
                fontSize: 22,
                color: CustomColors.customSwatchColor,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              height: 5,
              color: CustomColors.customSwatchColor,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
