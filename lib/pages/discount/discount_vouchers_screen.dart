import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/config/settings_info.dart';
import 'package:recicla_mais/pages/common_widgets/custom_app_bar.dart';
import 'package:recicla_mais/pages/discount/widgets/tile_voucher.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class DiscountVouchersScreen extends StatelessWidget {
  const DiscountVouchersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'cupons',
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            '5000 pts',
            style: TextStyle(
              fontSize: 30,
              color: CustomColors.customSwatchColor,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: StepProgressIndicator(
            totalSteps: 10,
            currentStep: 5,
            size: 10,
            selectedColor: CustomColors.customContrastColor,
            unselectedColor: Colors.grey,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (_, index) {
              return TileVoucher(
                description: SettingsInfo.vouchers[index].description,
                image: SettingsInfo.vouchers[index].imagePath,
              );
            },
            itemCount: SettingsInfo.vouchers.length,
          ),
        ),
      ]),
    );
  }
}
