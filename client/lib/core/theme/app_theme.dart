import 'package:client/core/theme/colors/app_colors.dart';
import 'package:client/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

enum AppThemeType {
  system(text: _systemText),
  light(text: _lightText),
  dark(text: _darkText);

  const AppThemeType({required this.text});

  final String text;

  static AppThemeType fromString(String themeString) {
    switch (themeString) {
      case _systemText:
        return AppThemeType.system;
      case _lightText:
        return AppThemeType.light;
      case _darkText:
        return AppThemeType.dark;
      default:
        return AppThemeType.dark;
    }
  }

  static const _systemText = 'system';
  static const _lightText = 'light';
  static const _darkText = 'dark';
}

class AppTheme {
  final AppThemeType themeType;
  AppTheme({required this.themeType});

  ThemeData get theme {
    switch (themeType) {
      case AppThemeType.dark:
        return _darkTheme;
      case AppThemeType.light:
        return _lightTheme;
      default:
        return _darkTheme;
    }
  }

  ColorScheme get _colorScheme {
    final darkColorScheme = const ColorScheme.dark().copyWith(
      primary: Colors.black,
      primaryContainer: Colors.black,
      onPrimaryContainer: Colors.black,
      secondaryContainer: Colors.black,
      outline: Colors.black,
      secondary: Colors.black,
      surface: Colors.black,
      error: Colors.red,
      onSecondary: Colors.white,
      onBackground: Colors.black,
      onSurface: Colors.black,
      background: Colors.black,
      onError: Colors.black,
    );
    switch (themeType) {
      case AppThemeType.dark:
        return darkColorScheme;
      case AppThemeType.light:
        return darkColorScheme;
      default:
        return darkColorScheme;
    }
  }

  ThemeData get _darkTheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: FontFamily.poppins,
        colorScheme: _colorScheme,
        scaffoldBackgroundColor: AppColors.darkColors.background,
        //  textTheme: TextTheme(labelMedium: )
      );
  ThemeData get _lightTheme => _darkTheme.copyWith(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.lightColors.background,
      );
}
