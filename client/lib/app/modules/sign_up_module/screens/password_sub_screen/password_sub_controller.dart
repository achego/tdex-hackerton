import 'package:client/app/modules/pin_module/pin_page.dart';
import 'package:client/app/modules/sign_up_module/sign_up_controller.dart';
import 'package:client/app/modules/success_failure_module/success_failure_page.dart';
import 'package:client/global_exports.dart';

class PasswordSubController extends GetxController {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  GlobalKey<FormState> passwordkey = GlobalKey<FormState>();

  handleContinue() async {
    if (!passwordkey.currentState!.validate()) {
      return;
    }
    if (confirmPassword.lTrim != password.lTrim) {
      AppNotifications.snackbar(message: "Passwords don't match");
      return;
    }
    final isOk = await signUpController.signUp();
    if (!isOk) {
      return;
    }

    Nav.offAll(
      SuccessFailurePage(
        title: 'Congratulations Chief, you made it',
        subTitle:
            'You have successfully completed your onboarding to ${appStrings.appTitle.toLowerCase()}, you can now access the features',
        actionButtonText: 'Set up pin',
        onActionPressed: () {
          Nav.to(PinPage(
            title: 'Create a new pin',
            subTitle: 'This 6 digit pin would be used for your transactions',
            onCompleted: _handleOnPinCompleted,
          ));
          // Nav.offAllNamed(RoutePaths.dashboard);
          // signUpController.setUpTransactionPin();
        },
      ),
    );
  }

  _handleOnPinCompleted(String pin) async {
    if (pin.length < 6) {
      AppNotifications.snackbar(message: 'Pin should be 6 digits');
      return;
    }
    if (int.tryParse(pin) == null) {
      AppNotifications.snackbar(message: 'Please enter a valid pin');
      return;
    }

    showLoading();
    final resp = await AuthProvider.setUpPin(pin: int.parse(pin));
    showLoading(show: false);

    if (!resp.isOk) {
      AppNotifications.snackbar(message: resp.message);
      return;
    }
    await AppNotifications.snackbar(
        type: NotificationType.success,
        message: 'Pin has been created successfully');

    Nav.offAllNamed(RoutePaths.dashboard);
  }
}
