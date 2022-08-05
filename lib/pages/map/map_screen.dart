import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/pages/collect/options_collect_screen.dart';
import 'package:recicla_mais/pages/common_widgets/custom_app_bar.dart';
import 'package:recicla_mais/pages/map/widget/map_widget.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: CustomAppBar(title: 'mapa'),
        preferredSize: Size.fromHeight(60),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const OptionsCollectScreen()));
        },
        child: const Icon(Icons.add_rounded, size: 40),
        elevation: 1,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
            child: Text(
              'encontre o ponto de coleta mais próximo de você',
              style: TextStyle(
                color: CustomColors.customSwatchColor,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Expanded(
            child: MapWidget(),
          ),
        ],
      ),
    );
  }
}
