import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.progressIndicator,
  }) : super(key: key);

  final int progressIndicator;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Container(
            color: progressIndicator >= 1
                ? CustomColors.customSwatchColor
                : Colors.grey,
            height: 10,
            width: 80,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Container(
            color: progressIndicator >= 2
                ? CustomColors.customSwatchColor
                : Colors.grey,
            height: 10,
            width: 80,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Container(
            color: progressIndicator >= 3
                ? CustomColors.customSwatchColor
                : Colors.grey,
            height: 10,
            width: 80,
          ),
        ),
      ],
    );
  }
}
