import 'package:client/app/data/models/user_model/user_model.dart';
import 'package:client/global_exports.dart';

import 'screens/email_phone_sub_screen/email_phone_sub_controller.dart';
import 'screens/email_phone_sub_screen/email_phone_sub_screen.dart';
import 'screens/fullname_username_sub_screen/fullname_username_sub_controller.dart';
import 'screens/fullname_username_sub_screen/fullname_username_sub_screen.dart';
import 'screens/password_sub_screen/password_sub_controller.dart';
import 'screens/password_sub_screen/password_sub_screen.dart';

class SignUpController extends GetxController {
  @override
  void onInit() async {
    logger("call onInit", 'here');
    super.onInit();
    currentSubPage(0);
  }

  List<Widget> get signUpSubScreens => [
        const EmailShoneSubScreen(),
        const FullnameUsernameSubScreen(),
        const PasswordSubScreen(),
      ];

  final currentSubPage = 0.obs;

  final pageController = PageController();

  final isLoading = false.obs;

  // final isLoading = false.obs;
  Future<bool> signUp() async {
    final signUpData = localStorage.auth.signUpDto.data;
    logger(signUpData.toJson(), 'Sign updata');
    isLoading(true);
    showLoading();
    final resp = await AuthProvider.signUp(
      email: signUpData.email ?? '',
      firstName: signUpData.firstName ?? '',
      lastName: signUpData.lastName ?? '',
      password: signUpData.password ?? "",
      phone: signUpData.phone ?? '',
      userName: signUpData.userName ?? '',
    );
    await appWait(2000);
    isLoading(false);
    showLoading(show: false);

    if (!resp.isOk) {
      AppNotifications.snackbar(message: resp.message);
      return false;
    }
    final data = resp.data;
    if (data == null) {
      AppNotifications.snackbar(message: AppStrings().errorText.errorOccured);
      return false;
    }
    localStorage.auth.setToken(data['token'] ?? "");
    final user = UserModel.fromJson(data);
    appController.user.value = user;
    localStorage.setCurrentUser(user);
    return true;
  }

  navigate({int? pageIndex}) async {
    if (currentSubPage.value >= signUpSubScreens.length) {
      return;
    }

    final index = currentSubPage.value + 1;
    currentSubPage.value = pageIndex ?? index;

    await pageController.animateToPage(
      pageIndex ?? index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
    );
  }

  onContinueClicked() async {
    switch (currentSubPage.value) {
      case 0:
        await emailPhoneSubController.handleContinue();
        final c = emailPhoneSubController;
        localStorage.auth.setSignupData(localStorage.auth.signUpDto.copyWith(
            currentStep: 1,
            data: localStorage.auth.signUpDto.data
                .copyWith(email: c.email.lTrim, phone: c.phone.lTrim)));
        logger(localStorage.auth.signUpDto.toJson(), 'Datata');
        break;
      case 1:
        localStorage.auth.setSignupData(
            localStorage.auth.signUpDto.copyWith(currentStep: 2));
        navigate();
        break;
      case 2:
        localStorage.auth.setSignupData(
            localStorage.auth.signUpDto.copyWith(currentStep: 3));
        navigate();
        break;
      case 3:
        await fullnameUsernameSubController.handleContinue();
        final c = fullnameUsernameSubController;
        localStorage.auth.setSignupData(localStorage.auth.signUpDto.copyWith(
            currentStep: 4,
            data: localStorage.auth.signUpDto.data.copyWith(
                firstName: c.firstName.lTrim,
                lastName: c.lastName.lTrim,
                userName: c.userName.lTrim)));

        break;
      case 4:
        await passwordSubController.handleContinue();
        final c = passwordSubController;
        localStorage.auth.setSignupData(localStorage.auth.signUpDto.copyWith(
            currentStep: 5,
            data: localStorage.auth.signUpDto.data
                .copyWith(password: c.password.trimedText)));
        break;
      default:
    }
  }

  String? trxPin;
  String? confirmTrxPin;

  navigateToDashBoard() async {
    Nav.offAllNamed(RoutePaths.dashboard);
  }

  String get buttonText {
    switch (currentSubPage.value) {
      case 2:
        return 'Signup';
      default:
        return 'Continue';
    }
  }
}

final signUpController = getFind(SignUpController());
final emailPhoneSubController = getPut(EmailPhoneSubController());
final fullnameUsernameSubController = getPut(FullnameUsernameSubController());
final passwordSubController = getPut(PasswordSubController());
