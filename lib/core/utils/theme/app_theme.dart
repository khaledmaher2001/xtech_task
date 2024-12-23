import 'package:flutter/material.dart';
import '../colors/colors.dart';

ThemeData themeDataLight = ThemeData(
  highlightColor: Colors.transparent,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  splashColor: Colors.transparent,
  primaryColor: AppColors.primarySwatchColor,
  primarySwatch: AppColors.primaryColor,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.primarySwatchColor,
  ),
  scaffoldBackgroundColor: const Color(0xff171923),
);
