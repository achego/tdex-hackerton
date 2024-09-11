


import 'package:client/core/utils/app_notifications.dart';
import 'package:client/global_exports.dart';

class LoginArguments {
  final bool canPop;
  final String? message;
  LoginArguments({
    this.canPop = false,
    this.message,
  });
}

class LogInController extends GetxController {
  late LoginArguments? args;

  @override
  void onInit() {
    super.onInit();
    args = Get.arguments as LoginArguments?;
    _showMessage();
  }

  _showMessage() async {
    if (args != null && args?.message != null) {
      await appWait(2000);
      AppNotifications.snackbar(message: args?.message);
    }
  }

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  final isLoading = false.obs;

  Future<void> login() async {
    if (!loginKey.currentState!.validate()) {
      return;
    }

    isLoading(true);
    showLoading();

    final resp = await AuthProvider.login(
        email: email.lTrim, password: password.trimedText);
    if (!resp.isOk) {
      isLoading(false);
      showLoading(show: false);
      AppNotifications.showModal(
          title: AppStrings().errorText.errorOccured,
          subTitle: resp.message,
          btnTitle: 'Try Again');
      return;
    }
    localStorage.auth.setToken(resp.data ?? '');
    logger(localStorage.auth.token, 'Token');

    await appController.updateUserBalances(token: localStorage.auth.token);
    final user = await appController.updateUser(token: localStorage.auth.token);
    if (user == null) {
      isLoading(false);
      showLoading(show: false);
      AppNotifications.snackbar(message: 'An Error occured getting user');
      return;
    }
    isLoading(false);
    showLoading(show: false);
    localStorage.setCurrentUser(user);
    if (args != null && (args?.canPop ?? false)) {
      Nav.back();
      return;
    }
    AppNotifications.showModal(
      title: 'Login successfull',
      subTitle:
          'Welcome back ${user.firstName.capitalizeFirst} ${user.lastName.capitalizeFirst} Please continue to your dashboard',
      type: NotificationType.success,
      btnTitle: 'Go to dashboard',
      onPressed: () {
        Nav.offAllNamed(RoutePaths.dashboard);
      },
    );
  }


}
