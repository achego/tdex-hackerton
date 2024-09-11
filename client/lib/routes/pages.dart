import 'package:client/app/modules/confirm_transaction_module/confirm_transaction_binding.dart';
import 'package:client/app/modules/confirm_transaction_module/confirm_transaction_page.dart';
import 'package:client/app/modules/dashboard_module/dashboard_page.dart';
import 'package:client/app/modules/log_in_module/log_in_binding.dart';
import 'package:client/app/modules/log_in_module/log_in_page.dart';
import 'package:client/app/modules/my_profile_module/my_profile_binding.dart';
import 'package:client/app/modules/my_profile_module/my_profile_page.dart';
import 'package:client/app/modules/onboarding_module/onboarding_binding.dart';
import 'package:client/app/modules/onboarding_module/onboarding_page.dart';
import 'package:client/app/modules/sign_up_module/sign_up_binding.dart';
import 'package:client/app/modules/sign_up_module/sign_up_page.dart';
import 'package:client/app/modules/splash_module/splash_binding.dart';
import 'package:client/app/modules/splash_module/splash_page.dart';
import 'package:client/app/modules/transaction_detail_module/transaction_detail_binding.dart';
import 'package:client/app/modules/transaction_detail_module/transaction_detail_page.dart';
import 'package:client/app/modules/transaction_success_module/transaction_success_binding.dart';
import 'package:client/app/modules/transaction_success_module/transaction_success_page.dart';
import 'package:get/get.dart';

import '../app/modules/dashboard_module/dashboard_binding.dart';
part './route_paths.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: RoutePaths.initialRoute,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RoutePaths.onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: RoutePaths.signUp,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: RoutePaths.logIn,
      page: () => const LogInPage(),
      binding: LogInBinding(),
    ),
    GetPage(
      name: RoutePaths.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: RoutePaths.myProfile,
      page: () => const MyProfilePage(),
      binding: MyProfileBinding(),
    ),
    GetPage(
      name: RoutePaths.confirmTransaction,
      page: () => const ConfirmTransactionPage(),
      binding: ConfirmTransactionBinding(),
    ),
    GetPage(
      name: RoutePaths.transactionDetail,
      page: () => const TransactionDetailPage(),
      binding: TransactionDetailBinding(),
    ),
    GetPage(
      name: RoutePaths.transactionSuccess,
      page: () => const TransactionSuccessPage(),
      binding: TransactionSuccessBinding(),
    ),
  ];
}
