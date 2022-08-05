import 'package:flutter/material.dart';
import 'package:recicla_mais/config/settings_info.dart';
import 'package:recicla_mais/pages/common_widgets/custom_app_bar.dart';
import 'package:recicla_mais/pages/common_widgets/user_profile.dart';
import 'package:recicla_mais/pages/settings/widgets/title_setting_options.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(title: 'configurações'),
      ),
      body: Column(
        children: [
          const UserProfile(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
              itemCount: SettingsInfo.settingsOptions.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TitleSettingOption(
                      title: SettingsInfo.settingsOptions[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
