import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/pages/common_widgets/recicla_logo_image.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ReciclaLogo(),
            Text(
              title,
              style: TextStyle(color: CustomColors.customSwatchColor),
            ),
          ],
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
