import 'package:client/app/components/debouncer.dart';
import 'package:client/app/modules/sign_up_module/sign_up_controller.dart';
import 'package:client/global_exports.dart';

class EmailPhoneSubController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();

  final debouncer = CustomDebouncer(milliseconds: 1000);

  final isCheckingValidEmail = false.obs;
  bool? isEmailAvail;
  final isCheckingValidPhone = false.obs;
  bool? isPhoneAvail;

  checkValidEmail() async {
    if (Validator.validateEmail(email.lTrim) != null) {
      isEmailAvail = null;
      isCheckingValidEmail.update((val) {});
      return;
    }
    isCheckingValidEmail(true);
    final resp = await AuthProvider.verifyUniquAvailable(email: email.lTrim);
    await appWait(1000);
    isCheckingValidEmail(false);
    if (!resp.isOk) {
      isEmailAvail = false;
      return;
    }
    final data = resp.data;
    if (data.values.first) {
      isEmailAvail = false;
      return;
    }
    isEmailAvail = true;
  }

  checkValidPhone() async {
    if (Validator.validatePhoneNumber(phone.lTrim) != null) {
      isPhoneAvail = null;
      isCheckingValidPhone.update((val) {});
      return;
    }
    isCheckingValidPhone(true);
    final resp = await AuthProvider.verifyUniquAvailable(phone: phone.lTrim);
    isCheckingValidPhone(false);
    logger(resp.toJson(), 'The respnse');
    if (!resp.isOk) {
      isPhoneAvail = null;
      return;
    }
    final data = resp.data;
    logger(data, 'The data');
    if (data.values.first) {
      isPhoneAvail = false;
      return;
    }
    isPhoneAvail = true;
  }

  /// type: email|phone
  handleOnchanged(String type, String value) {
    switch (type) {
      case 'email':
        debouncer.run(checkValidEmail);
      case 'phone':
        debouncer.run(checkValidPhone);

      default:
    }
  }

  Future<void> handleContinue() async {
    if (!emailFormKey.currentState!.validate()) {
      return;
    }

    signUpController.navigate();
  }
}
