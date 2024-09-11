import 'package:client/app/components/textfield_success_error_component.dart';
import 'package:client/app/modules/sign_up_module/sign_up_controller.dart';
import 'package:client/global_exports.dart';

class EmailShoneSubScreen extends StatelessWidget {
  const EmailShoneSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomSingleChildScroll(
        child: Form(
          key: emailPhoneSubController.emailFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi there 👋 Let's set up your account",
                style: TextStyles.heading(),
              ),
              spaceh(4),
              Text(
                'Enter your email and phone number to continue',
                style: TextStyles.subHeading(),
              ),
              spaceh(40),
              CustomTextFormField(
                labelText: 'Email ',
                hintText: 'Enter your email address',
                controller: emailPhoneSubController.email,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  final validator = Validator.validateEmail(value);
                  if (validator != null) {
                    return validator;
                  }
                  if (emailPhoneSubController.isCheckingValidEmail.value) {
                    return '';
                  }
                  if (emailPhoneSubController.isEmailAvail == null ||
                      !emailPhoneSubController.isEmailAvail!) {
                    return 'The email is not available';
                  }
                  return null;
                },
                trailling: TextFieldSuccessFailureComponent(
                    isSuccess: emailPhoneSubController.isEmailAvail),
                isLoading: emailPhoneSubController.isCheckingValidEmail.value,
                onChanged: (value) =>
                    emailPhoneSubController.handleOnchanged('email', value),
              ),
              spaceh(25),
              CustomTextFormField(
                labelText: 'Phone ',
                hintText: 'Enter your phone number ',
                controller: emailPhoneSubController.phone,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  final validator = Validator.validatePhoneNumber(value);
                  if (validator != null) {
                    return validator;
                  }
                  if (emailPhoneSubController.isCheckingValidPhone.value) {
                    return '';
                  }
                  if (emailPhoneSubController.isPhoneAvail == null ||
                      !emailPhoneSubController.isPhoneAvail!) {
                    return 'The phone number is not available';
                  }
                  return null;
                },
                isLoading: emailPhoneSubController.isCheckingValidPhone.value,
                trailling: TextFieldSuccessFailureComponent(
                    isSuccess: emailPhoneSubController.isPhoneAvail),
                onChanged: (value) =>
                    emailPhoneSubController.handleOnchanged('phone', value),
              ),
              spaceh(260),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: 'Already have an account? '),
                      TextSpan(
                          text: 'Log in',
                          style: TextStyle(color: AppColors.color.primary))
                    ],
                  ),
                  style: TextStyles.subHeading()
                      .copyWith(fontSize: 14, color: AppColors.color.white),
                ),
              )
            ],
          ).defPadX,
        ),
      ),
    );
  }
}
