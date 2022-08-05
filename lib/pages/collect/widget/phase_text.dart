import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class PhaseText extends StatelessWidget {
  const PhaseText({
    Key? key,
    required this.boldText,
    required this.phrase,
  }) : super(key: key);

  final String boldText;
  final String phrase;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 8,
      ),
      child: SizedBox(
        width: 300,
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text: '$boldText ',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: phrase),
          ]),
          style: TextStyle(
            fontSize: 20,
            color: CustomColors.customSwatchColor,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
