import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';

class SpotlightCarousel extends StatelessWidget {
  const SpotlightCarousel({
    Key? key,
    required this.title,
    required this.imgURL,
  }) : super(key: key);

  final String title;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: CustomColors.customContrastColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset.fromDirection(-10, 3),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: AutoSizeText(
                          title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: CustomColors.customSwatchColor,
                            fontSize: 16,
                          ),
                          minFontSize: 12,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('assista'),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    imgURL,
                    height: 70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
