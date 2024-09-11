import 'package:client/app/data/local/local_storage.dart';
import 'package:client/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'app_theme_builder.dart';

class ThemeController extends GetxController {
  Rx<AppThemeType> get themeType => localStorage.themeType.obs;

  Rx<ThemeMode> get themeMode {
    return switch (themeType.value) {
      AppThemeType.light => ThemeMode.light.obs,
      AppThemeType.dark => ThemeMode.dark.obs,
      AppThemeType.system =>
        isSystemDarkTheme ? ThemeMode.dark.obs : ThemeMode.light.obs
    };
  }

  Rx<SystemUiOverlayStyle> get systemUiOverlayStyle =>
      themeType.value == AppThemeType.light
          ? SystemUiOverlayStyle.dark.obs
          : SystemUiOverlayStyle.light.obs;

  get isSystemDarkTheme {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode;
  }

  // change(BuildContext context) {
  //   AppThemeBuilder.of(context).rebuild();
  // }

  toogleTheme(AppThemeType type) {
    themeType.value = type;
    localStorage.setThemeType(type);
  }
}
