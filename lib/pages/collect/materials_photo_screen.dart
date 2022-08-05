import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/pages/collect/details_collect_screen.dart';
import 'package:recicla_mais/pages/collect/widget/custom_button_collection.dart';
import 'package:recicla_mais/pages/collect/widget/phase_text.dart';
import 'package:recicla_mais/pages/collect/widget/progress_bar.dart';
import 'package:recicla_mais/pages/common_widgets/custom_app_bar.dart';

class MaterialsPhotoScreen extends StatelessWidget {
  const MaterialsPhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(title: 'coleta'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 25),
            child: ProgressBar(progressIndicator: 2),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: PhaseText(
                boldText: 'Tire',
                phrase: 'uma foto do material que você irá reciclar:',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.photo_camera_rounded,
                      color: CustomColors.customContrastColor,
                      size: 150,
                    ),
                    Text(
                      'adicione uma foto',
                      style: TextStyle(
                        fontSize: 28,
                        color: CustomColors.customSwatchColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: SizedBox(
              height: 80,
              child: CustomButtonCollection(
                buttonLabel: 'avançar',
                action: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DetailsCollectScreen(),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
