import 'package:client/app/components/dismiss_keyboard.dart';
import 'package:client/app/components/lock_app.dart';
import 'package:client/core/utils/app_initializations.dart';
import 'package:client/global_exports.dart';

void main() async {
  await AppInitializations.initialize();
  logger(appStrings.apiBaseUrl, 'Base Url');
  runApp(const MyApp());
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(415, 902),
      minTextAdapt: true,
      child: Obx(() {
        return AppSecurityOverlay(
          child: DismissKeyBoard(
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: appStrings.appTitle,
              themeMode: themeController.themeMode.value,
              theme: AppTheme(themeType: AppThemeType.dark).theme,
              darkTheme: AppTheme(themeType: AppThemeType.dark).theme,
              initialRoute: RoutePaths.initialRoute,
              navigatorObservers: [routeObserver],
              getPages: AppPages.pages,
            ),
          ),
        );
      }),
    );
  }
}
