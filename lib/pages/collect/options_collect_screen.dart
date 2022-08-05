import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/config/settings_info.dart';
import 'package:recicla_mais/pages/collect/widget/custom_button_collection.dart';
import 'package:recicla_mais/pages/collect/materials_photo_screen.dart';
import 'package:recicla_mais/pages/collect/widget/custom_checkbox.dart';
import 'package:recicla_mais/pages/collect/widget/phase_text.dart';
import 'package:recicla_mais/pages/collect/widget/progress_bar.dart';
import 'package:recicla_mais/pages/common_widgets/custom_app_bar.dart';

class OptionsCollectScreen extends StatelessWidget {
  const OptionsCollectScreen({Key? key}) : super(key: key);

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
            child: ProgressBar(progressIndicator: 1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PhaseText(
                  boldText: 'Selecione',
                  phrase: 'os materiais que você irá reciclar:',
                ),
                Text(
                  'mínimo dois materiais diferentes',
                  style: TextStyle(
                    color: CustomColors.customSwatchColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: SettingsInfo.materialsToCollect.length,
              itemBuilder: (_, index) {
                return CustomCheckbox(
                  label: SettingsInfo.materialsToCollect[index],
                );
              },
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
                        builder: (_) => const MaterialsPhotoScreen())),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
