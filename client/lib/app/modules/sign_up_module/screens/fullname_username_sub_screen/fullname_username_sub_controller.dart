import 'package:client/app/components/debouncer.dart';
import 'package:client/app/modules/sign_up_module/sign_up_controller.dart';
import 'package:client/global_exports.dart';

class FullnameUsernameSubController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController userName = TextEditingController();

  GlobalKey<FormState> signupDetailsFormKey = GlobalKey<FormState>();

  final debouncer = CustomDebouncer(milliseconds: 1000);

  final isCheckingValidUserName = false.obs;
  bool? isUserNameValid;

  checkValidUsername() async {
    if (Validator.validateUserName(userName.lTrim) != null) {
      isUserNameValid = null;
      isCheckingValidUserName.update((val) {});
      return;
    }
    isCheckingValidUserName(true);
    final resp =
        await AuthProvider.verifyUniquAvailable(userName: userName.lTrim);
    await appWait(1000);
    isCheckingValidUserName(false);
    if (!resp.isOk) {
      isUserNameValid = false;
      return;
    }
    final data = resp.data;
    if (data.values.first) {
      isUserNameValid = false;
      return;
    }
    isUserNameValid = true;
  }

  handleOnchanged() {
    debouncer.run(checkValidUsername);
  }

  Future<void> handleContinue() async {
    if (!signupDetailsFormKey.currentState!.validate()) {
      return;
    }

    signUpController.navigate();
  }
}
