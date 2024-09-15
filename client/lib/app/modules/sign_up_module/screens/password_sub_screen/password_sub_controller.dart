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
        actionButtonText: 'Take me to dashboard',
        onActionPressed: () {
          Nav.offAllNamed(RoutePaths.dashboard);
          // signUpController.setUpTransactionPin();
        },
      ),
    );
  }
}
