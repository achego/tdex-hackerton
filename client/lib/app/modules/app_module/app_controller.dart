import 'package:client/app/data/models/available_currency_model/available_currency_model.dart';
import 'package:client/app/data/models/balance_model/balance_model.dart';
import 'package:client/app/data/models/credential_model/credential_model.dart';
import 'package:client/app/data/models/currency_rate_model/currency_rate_model.dart';
import 'package:client/app/data/models/pfi_rate_model/pfi_rate_model.dart';
import 'package:client/app/data/models/user_model/user_model.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/app/modules/log_in_module/log_in_controller.dart';
import 'package:client/app/modules/pin_module/pin_page.dart';
import 'package:client/global_exports.dart';

class AppController extends GetxController {
  final user = localStorage.currentUser?.obs ?? const UserModel().obs;
  final userBalances = <BalanceModel>[].obs;
  final userCredentials = <CredentialModel>[].obs;
  final selectedBalance = const BalanceModel().obs;
  final currencyRates = const <CurrencyRateModel>[].obs;
  final availableCurrencies = const <AvailableCurrencyModel>[].obs;
  final pfiRatings = const <PfiRateModel>[].obs;

  bool shouldLockApp = false;

  get enableLockApp => shouldLockApp = true;

  final isBalanceShown = localStorage.isBalanceShown.obs;
  Future<void> toogleBalanceMode() async {
    isBalanceShown.toggle();
    await localStorage.setIsBalanceShown(isBalanceShown.value);
  }

  Future<UserModel?> updateUser({String? token}) async {
    final userResp = await AuthProvider.getMe(token: token);
    if (userResp.isOk && userResp.data != null) {
      user.value = userResp.data!;
      localStorage.setCurrentUser(userResp.data);
      return userResp.data;
    }
    if (userResp.data == null) {
      return null;
    }
    return null;
  }

  Future<List<CurrencyRateModel>> updateCurrencyrates({String? token}) async {
    updateAvailbleCurrencies();
    updatePfiratings();
    final resp = await UserProvider.getCurrencyRates();
    if (!resp.isOk) {
      return [];
    }
    currencyRates.value = resp.data ?? [];
    return currencyRates;
  }

  Future<List<PfiRateModel>> updatePfiratings() async {
    final resp = await UserProvider.getPfiRatings();

    pfiRatings.value = resp.data ?? [];
    return pfiRatings;
  }

  Future<List<CredentialModel>?> updateCredentials({String? token}) async {
    final credResp = await UserProvider.getCredentials();
    if (credResp.isOk && credResp.data != null) {
      userCredentials.value = credResp.data ?? [];
      return credResp.data;
    }
    if (credResp.data == null) {
      return null;
    }
    return null;
  }

  Future<List<AvailableCurrencyModel>?> updateAvailbleCurrencies(
      {String? token}) async {
    final resp = await UserProvider.getAvailableCurrencies();
    if (resp.isOk) {
      availableCurrencies.value = resp.data ?? [];
      return availableCurrencies;
    }

    return null;
  }

  Future<List<BalanceModel>?> updateUserBalances({String? token}) async {
    updateCurrencyrates();
    final balanceresp = await AuthProvider.getAllBalance(token: token);
    logger(balanceresp, 'THe balance resp');
    if (balanceresp.isOk && balanceresp.data != null) {
      logger(balanceresp.data, 'Balance Gotten');
      userBalances.value = balanceresp.data!;
      selectedBalance.value =
          balanceresp.data!.where((element) => element.currency == 'usd').first;
      // localStorage.setCurrentUser(balanceresp.data);
      return balanceresp.data;
    }
    if (balanceresp.data == null) {
      return null;
    }
    return null;
  }

  logOut({bool canPop = false}) async {
    if (canPop) {
      Nav.toNamed<LoginArguments>(RoutePaths.logIn,
          arguments: LoginArguments(
            canPop: true,
            message: 'Your session has expired Please login to continue',
          ));
      return;
    }
    await localStorage.setCurrentUser(null);
    await localStorage.auth.setToken('');
    Nav.offAllNamed(RoutePaths.logIn);
  }

  deleteAccount() async {
    showLoading();
    final resp = await AuthProvider.deleteAccount();
    showLoading(show: false);
    if (!resp.isOk) {
      AppNotifications.snackbar(message: resp.message);
      return;
    }
    await localStorage.setCurrentUser(null);
    await localStorage.auth.setToken('');
    Nav.offAllNamed(RoutePaths.logIn);
  }

  commingSoon() async {
    AppNotifications.snackbar(message: 'Comming soon');
    return;
  }

  void getPinInput({Function(int pin)? onCompleted}) async {
    await Nav.to(PinPage(
      canGoBack: true,
      title: 'Confirm your pin',
      subTitle:
          'Please confirm this transaction with your 6 digit pin to continue',
      onCompleted: (pin) => onCompleted?.call(int.parse(pin)),
    ));
  }

  String getProviderImageFromName(String name) {
    return '';
  }
}
