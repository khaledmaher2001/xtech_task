import 'package:flutter/material.dart';

class AppColors {
  AppColors();
  factory AppColors.of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? AppColors()
        : DarkColors();
  }

  static const Color primarySwatchColor = Color(0xff3E5AF0);

  static MaterialColor primaryColor =
      const MaterialColor(0xFF3E5AF0, <int, Color>{
    50: Color(0x1A3E5AF0),
    100: Color(0x333E5AF0),
    200: Color(0x4D3E5AF0),
    300: Color(0x663E5AF0),
    400: Color(0x803E5AF0),
    500: Color(0x993E5AF0),
    600: Color(0xB33E5AF0),
    700: Color(0xCC3E5AF0),
    800: Color(0xE63E5AF0),
    900: Color(0xFF3E5AF0),
  });

  static const Color red = Color(0xFFE02E2E);
  Color iconsColor = const Color(0xff141B34);
  Color background = const Color(0xffFfffff);
}

class DarkColors extends AppColors {
  @override
  Color iconsColor = const Color(0xffFFFFFF);
  @override
  Color background = const Color(0xff171923);
}
