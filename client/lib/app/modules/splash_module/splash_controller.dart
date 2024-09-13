import 'package:client/global_exports.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateBasedOnAuthStatus();
  }

  _navigateBasedOnAuthStatus() async {
    final user = localStorage.currentUser;
    final token = localStorage.auth.token;

    logger(user, 'User');
    logger(token, 'Token');

    await appWait(3000);

    if (user == null || token.isEmpty) {
      Nav.offAllNamed(RoutePaths.onboarding);
      return;
    }
    appController.user.value = user;
    Nav.offAllNamed(RoutePaths.dashboard);
    await appWait(1000);
    appController.updateUser();
  }
}
