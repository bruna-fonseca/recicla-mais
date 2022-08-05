import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(42, 117, 105, .1),
  100: const Color.fromRGBO(42, 117, 105, .2),
  200: const Color.fromRGBO(42, 117, 105, .3),
  300: const Color.fromRGBO(42, 117, 105, .4),
  400: const Color.fromRGBO(42, 117, 105, .5),
  500: const Color.fromRGBO(42, 117, 105, .6),
  600: const Color.fromRGBO(42, 117, 105, .7),
  700: const Color.fromRGBO(42, 117, 105, .8),
  800: const Color.fromRGBO(42, 117, 105, .9),
  900: const Color.fromRGBO(42, 117, 105, 1),
};

abstract class CustomColors {
  static Color customContrastColor = const Color(0xffC4DF9C);

  static MaterialColor customSwatchColor =
      MaterialColor(0xff2A7569, _swatchOpacity);
}
