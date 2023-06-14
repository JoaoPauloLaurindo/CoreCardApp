import 'package:flutter/material.dart';
import 'package:corecard/themes/theme_colors.dart';

ThemeData CoreTheme = ThemeData(
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  fontFamily: 'Galano',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      color: ThemeColors.secundaryColor,
    ),
  ),
);
