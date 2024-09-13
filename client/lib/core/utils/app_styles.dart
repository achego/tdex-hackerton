import 'package:client/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontFamily {
  static const poppins = 'Poppins';
}

class TextStyles {
  ///.
  ///```dart
  ///final double fontSize = 16.sp;
  ///fontFamily:  FontFamily.poppins,
  ///fontWeight: FontWeight.w500,
  ///```
  static TextStyle subHeading({
    double? fontSizeDiff,
  }) {
    final double fontSize = 16.sp;
    return TextStyle(
      color: AppColors.color.textLight,
      fontSize: fontSizeDiff != null ? fontSize + fontSizeDiff.sp : fontSize,
      fontWeight: FontWeight.w500,
    );
  }

  ///.
  ///```dart
  ///final double fontSize = 14.sp;
  ///fontFamily:  FontFamily.poppins,
  ///fontWeight: FontWeight.w500,
  ///```
  static TextStyle base({
    double? fontSizeDiff,
    bool primary = true,
  }) {
    final double fontSize = 14.sp;
    return TextStyle(
      color: primary ? AppColors.color.white : AppColors.color.textLight,
      fontSize: fontSizeDiff != null ? fontSize + fontSizeDiff.sp : fontSize,
      fontWeight: FontWeight.w500,
    );
  }

  ///.
  ///```dart
  ///final double fontSize = 25.sp;
  ///fontFamily:  FontFamily.poppins,
  ///fontWeight: FontWeight.w700,
  ///```
  static TextStyle heading({
    double? fontSizeDiff,
  }) {
    final double fontSize = 25.sp;
    return TextStyle(
      color: AppColors.color.white,
      fontSize: fontSizeDiff != null ? fontSize + fontSizeDiff.sp : fontSize,
      fontWeight: FontWeight.w700,
    );
  }
}
