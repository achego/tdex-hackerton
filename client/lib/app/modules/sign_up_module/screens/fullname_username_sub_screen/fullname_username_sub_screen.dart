import 'package:client/app/components/textfield_success_error_component.dart';
import 'package:client/global_exports.dart';

import '../../sign_up_controller.dart';

class FullnameUsernameSubScreen extends StatelessWidget {
  const FullnameUsernameSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomSingleChildScroll(
        child: Form(
          key: fullnameUsernameSubController.signupDetailsFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Alright champ, lets get to know you a bit",
                style: TextStyles.heading(),
              ),
              spaceh(4),
              Text(
                'Please provide your Full name and a unique username to continue',
                style: TextStyles.subHeading(),
              ),
              spaceh(40),
              CustomTextFormField(
                labelText: 'First name  ',
                hintText: 'Enter your first name',
                controller: fullnameUsernameSubController.firstName,
                keyboardType: TextInputType.emailAddress,
                validator: Validator.validateSingleName,
              ),
              spaceh(25),
              CustomTextFormField(
                labelText: 'Last name  ',
                hintText: 'Enter your last name',
                controller: fullnameUsernameSubController.lastName,
                keyboardType: TextInputType.emailAddress,
                validator: Validator.validateSingleName,
              ),
              spaceh(25),
              CustomTextFormField(
                labelText: 'Username ',
                hintText: 'Enter a unique username ',
                controller: fullnameUsernameSubController.userName,
                validator: (value) {
                  final validator = Validator.validateUserName(value);
                  if (validator != null) {
                    return validator;
                  }
                  if (fullnameUsernameSubController
                      .isCheckingValidUserName.value) {
                    return '';
                  }
                  if (fullnameUsernameSubController.isUserNameValid == null ||
                      !fullnameUsernameSubController.isUserNameValid!) {
                    return 'The username is not available';
                  }
                  return null;
                },
                trailling: TextFieldSuccessFailureComponent(
                    isSuccess: fullnameUsernameSubController.isUserNameValid),
                isLoading:
                    fullnameUsernameSubController.isCheckingValidUserName.value,
                onChanged: (value) =>
                    fullnameUsernameSubController.handleOnchanged(),
              ),
            ],
          ).defPadX,
        ),
      ),
    );
  }
}
