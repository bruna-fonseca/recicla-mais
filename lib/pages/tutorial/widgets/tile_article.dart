import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TileArticle extends StatelessWidget {
  const TileArticle({
    Key? key,
    required this.description,
    required this.imageURL,
  }) : super(key: key);

  final String imageURL;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 40,
      ),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xffF1F1F1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageURL,
                height: 50,
              ),
            ),
            SizedBox(
              width: 180,
              child: AutoSizeText(
                description,
                minFontSize: 12,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
