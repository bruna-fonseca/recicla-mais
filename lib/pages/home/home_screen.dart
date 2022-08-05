import 'package:flutter/material.dart';
import 'package:recicla_mais/config/custom_colors.dart';
import 'package:recicla_mais/pages/discount/discount_vouchers_screen.dart';
import 'package:recicla_mais/pages/map/map_screen.dart';
import 'package:recicla_mais/pages/settings/settings_screen.dart';
import 'package:recicla_mais/pages/tutorial/tutorial_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 800),
      curve: Curves.linearToEaseOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          MapScreen(),
          TutorialScreen(),
          DiscountVouchersScreen(),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _currentIndex,
        unselectedItemColor: CustomColors.customContrastColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map_rounded),
            label: 'mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded),
            label: 'tutoriais',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business_rounded),
            label: 'loja de cupons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.display_settings_rounded),
            label: 'configurações',
          ),
        ],
      ),
    );
  }
}
