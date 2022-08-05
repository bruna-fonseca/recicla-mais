import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TileVoucher extends StatelessWidget {
  const TileVoucher({
    Key? key,
    required this.description,
    required this.image,
  }) : super(key: key);

  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: AutoSizeText(
                  description,
                  maxLines: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
