import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/config/settings_info.dart';
import 'package:recicla_mais/pages/collect/conclusion_screen.dart';
import 'package:recicla_mais/pages/collect/widget/custom_button_collection.dart';
import 'package:recicla_mais/pages/collect/widget/phase_text.dart';
import 'package:recicla_mais/pages/collect/widget/progress_bar.dart';
import 'package:recicla_mais/pages/common_widgets/custom_app_bar.dart';

class DetailsCollectScreen extends StatelessWidget {
  const DetailsCollectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(title: 'coleta'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 25),
            child: ProgressBar(progressIndicator: 3),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: PhaseText(
                boldText: 'Confirme',
                phrase: 'os detalhes de sua coleta:',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'material será recebido pelo ponto de coleta [nome do ponto de coleta]',
                    style: TextStyle(
                      color: CustomColors.customSwatchColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person_outline,
                    size: 50,
                    color: CustomColors.customContrastColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'materiais reciclados',
                style: TextStyle(
                  color: CustomColors.customSwatchColor,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          ...SettingsInfo.collectedMaterials.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: CustomColors.customSwatchColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    item,
                    style: TextStyle(
                      color: CustomColors.customSwatchColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            );
          }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: SizedBox(
              height: 80,
              child: CustomButtonCollection(
                buttonLabel: 'confirmar',
                action: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ConclusionScreen()),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
