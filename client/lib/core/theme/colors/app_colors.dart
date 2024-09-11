import 'package:client/core/theme/app_theme.dart';
import 'package:client/core/utils/globals.dart';
import 'package:flutter/material.dart';
import 'dark_mode_colors.dart';
import 'light_mode_colors.dart';

abstract class AppThemeColor {
  Color get primary => const Color(0xFFBDB2FF);
  Color get white;
  Color get background;
  Color get border;
  Color get textLight;
  Color get textDark;
  Color get grey400;
  Color get grey100;
  Color get error => const Color(0xFFE00B0B);
  Color get success => const Color(0xFF42E00B);
}

class AppColors {
  static final darkColors = DarkModeColors();
  static final lightColors = LightModeColors();

  static AppThemeColor get color {
    switch (themeController.themeType.value) {
      case AppThemeType.light:
        return lightColors;
      case AppThemeType.dark:
        return darkColors;
      case AppThemeType.system:
        return themeController.isSystemDarkTheme ? darkColors : lightColors;
    }
  }
}
