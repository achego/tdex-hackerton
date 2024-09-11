import 'package:client/app/data/local/local_storage.dart';
import 'package:client/app/modules/app_module/app_controller.dart';
import 'package:client/core/theme/theme_controller.dart';
import 'package:client/core/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppInitializations {
  static Future initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// Iniitialize local storage
    await localStorage.init();

    /// Initialize Dot Env
    // await dotenv.load();

    await _setPreferedScreenOrientation();
    await precacheSvgPath([
      // AppIconSvgs.appName,
      // AppIconSvgs.loading,
      // AppIconSvgs.logo,
    ]);

    Get.put(AppController(), permanent: true);
    Get.put(ThemeController(), permanent: true);
  }

  static Future precacheSvgPath(List<String> svgPaths) async {
    for (var svgPath in svgPaths) {
      final logo = SvgAssetLoader(svgPath);
      await svg.cache
          .putIfAbsent(logo.cacheKey(null), () => logo.loadBytes(null));
    }
  }

  static Future precacheAssetImages(
      List<String> imagePaths, BuildContext context) async {
    for (var imagePath in imagePaths) {
      final image = AssetImage(imagePath);
      await precacheImage(image, context);
      logger('Done with one', image.assetName);
    }
  }
}

Future _setPreferedScreenOrientation() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
