import 'package:factory_method_app/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme(
    background: AppColors.darkModeMainColor,
    brightness: Brightness.dark,
    primary: AppColors.darkModeMainColor,
    onPrimary: AppColors.darkModeMainColor,
    onSecondary: AppColors.darkModeMainColor,
    secondary: AppColors.darkModeMainColor,
    error: AppColors.darkModeMainColor,
    onError: AppColors.darkModeMainColor,
    onBackground: AppColors.darkModeMainColor,
    surface: AppColors.darkModeMainColor,
    onSurface: AppColors.darkModeMainColor,
  ),
);

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    background: Colors.white,
    brightness: Brightness.light,
    primary: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    secondary: Colors.white,
    error: Colors.white,
    onError: Colors.white,
    onBackground: Colors.white,
    surface: Colors.white,
    onSurface: Colors.white,
  ),
);
