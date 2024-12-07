import 'package:client/app/modules/confirm_transaction_module/confirm_transaction_binding.dart';
import 'package:client/app/modules/confirm_transaction_module/confirm_transaction_page.dart';
import 'package:client/app/modules/dashboard_module/dashboard_page.dart';
import 'package:client/app/modules/log_in_module/log_in_binding.dart';
import 'package:client/app/modules/log_in_module/log_in_page.dart';
import 'package:client/app/modules/my_profile_module/my_profile_binding.dart';
import 'package:client/app/modules/my_profile_module/my_profile_page.dart';
import 'package:client/app/modules/onboarding_module/onboarding_binding.dart';
import 'package:client/app/modules/onboarding_module/onboarding_page.dart';
import 'package:client/app/modules/send_method_module/send_method_binding.dart';
import 'package:client/app/modules/send_method_module/send_method_page.dart';
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
import '../app/modules/send_by_pfi_module/send_by_pfi_page.dart';

import '../app/modules/send_by_pfi_module/send_by_pfi_binding.dart';
import '../app/modules/send_from_wallet_module/send_from_wallet_page.dart';

import '../app/modules/send_from_wallet_module/send_from_wallet_binding.dart';
import '../app/modules/wallet_enter_amount_module/wallet_enter_amount_page.dart';

import '../app/modules/wallet_enter_amount_module/wallet_enter_amount_binding.dart';
import '../app/modules/swap_currency_module/swap_currency_page.dart';

import '../app/modules/swap_currency_module/swap_currency_binding.dart';
import '../app/modules/send_to_username_module/send_to_username_page.dart';

import '../app/modules/send_to_username_module/send_to_username_binding.dart';
    import '../app/modules/features/donation/presentation/donate_overview_page.dart'; 

    import '../app/modules/features/donation/services/donate_overview_binding.dart'; 
 part
     './route_paths.dart';

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
    GetPage(
      name: RoutePaths.sendMethod,
      page: () => const SendMethodPage(),
      binding: SendMethodBinding(),
    ),
    GetPage(
      name: RoutePaths.sendByPfi,
      page: () => const SendByPfiPage(),
      binding: SendByPfiBinding(),
    ),
    GetPage(
      name: RoutePaths.sendFromWallet,
      page: () => const SendFromWalletPage(),
      binding: SendFromWalletBinding(),
    ),
    GetPage(
      name: RoutePaths.walletEnterAmount,
      page: () => const WalletEnterAmountPage(),
      binding: WalletEnterAmountBinding(),
    ),
    GetPage(
      name: RoutePaths.swapCurrency,
      page: () => const SwapCurrencyPage(),
      binding: SwapCurrencyBinding(),
    ),
    GetPage(
      name: RoutePaths.sendToUsername,
      page: () => const SendToUsernamePage(),
      binding: SendToUsernameBinding(),
    ),
        GetPage(
        name: RoutePaths.donateOverview,
        page: () => const DonateOverviewPage(),
        binding:DonateOverviewBinding(),
      ), 
 ]
      ;
}
