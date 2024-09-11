import 'package:client/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DarkModeColors extends AppThemeColor {
  @override
  Color get textDark => const Color(0xFF16171D);
  
  @override
  Color get background => const Color(0xFF16171D);

  @override
  Color get border => const Color(0xFF39364D);

  @override
  Color get grey100 => const Color(0xFF494D58);

  @override
  Color get grey400 => const Color(0xFF21242D);

  @override
  Color get textLight => const Color(0xFFA7AEBF);

  @override
  Color get white => const Color(0xFFFFFFFF);
}
