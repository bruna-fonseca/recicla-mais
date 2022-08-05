import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/config/settings_info.dart';
import 'package:recicla_mais/pages/common_widgets/custom_app_bar.dart';
import 'package:recicla_mais/pages/common_widgets/user_profile.dart';
import 'package:recicla_mais/pages/tutorial/widgets/spotlight_carousel.dart';
import 'package:recicla_mais/pages/tutorial/widgets/tile_article.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(title: 'tutorial'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const UserProfile(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  scrollPhysics: const BouncingScrollPhysics(),
                ),
                items: SettingsInfo.newsAndTutorials.map((item) {
                  return SpotlightCarousel(
                    title: item.description,
                    imgURL: item.imageURL,
                  );
                }).toList(),
              ),
            ),

            // meio  - Noticias relevantes e o textButton de ver todas
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'notícias relevantes',
                      style: TextStyle(
                        color: CustomColors.customSwatchColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'ver todos',
                        style: TextStyle(
                          color: CustomColors.customSwatchColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // lista com outras notícias
            ...SettingsInfo.newsAndTutorials.map((item) {
              return TileArticle(
                description: item.description,
                imageURL: item.imageURL,
              );
            }),
          ],
        ),
      ),
    );
  }
}
