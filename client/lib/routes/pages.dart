import 'package:client/app/modules/app_module/splash_module/splash_binding.dart';
import 'package:client/app/modules/app_module/splash_module/splash_page.dart';
import 'package:get/get.dart';
part './route_paths.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: RoutePaths.initialRoute,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    // GetPage(
    //   name: RoutePaths.onboarding,
    //   page: () => const OnboardingPage(),
    //   binding: OnboardingBinding(),
    // ),
    // GetPage(
    //   name: RoutePaths.signUp,
    //   page: () => const SignUpPage(),
    //   binding: SignUpBinding(),
    // ),
    // GetPage(
    //   name: RoutePaths.logIn,
    //   page: () => const LogInPage(),
    //   binding: LogInBinding(),
    // ),
    // GetPage(
    //   name: RoutePaths.dashboard,
    //   page: () => const DashboardPage(),
    //   binding: DashboardBinding(),
    // ),
  ];
}
