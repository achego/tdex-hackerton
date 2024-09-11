import 'package:client/app/modules/sign_up_module/sign_up_controller.dart';
import 'package:client/global_exports.dart';

class PasswordSubScreen extends StatelessWidget {
  const PasswordSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildScroll(
      child: Form(
        key: passwordSubController.passwordkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "You’re almost there",
              style: TextStyles.heading(),
              textAlign: TextAlign.left,
            ),
            spaceh(4),
            Text(
              'Choose a unique password that would be used to log into your account',
              style: TextStyles.subHeading(),
            ),
            spaceh(40),
            CustomTextFormField(
              labelText: 'Password ',
              hintText: 'Enter a unique password',
              controller: passwordSubController.password,
              keyboardType: TextInputType.visiblePassword,
              validator: Validator.validatePassword,
              obscureTextWithToggle: true,
              maxLines: 1,
            ),
            spaceh(25),
            CustomTextFormField(
              labelText: 'Confirm Password ',
              hintText: 'Confirm your password ',
              controller: passwordSubController.confirmPassword,
              keyboardType: TextInputType.visiblePassword,
              validator: Validator.validatePassword,
              obscureTextWithToggle: true,
              maxLines: 1,
            ),
          ],
        ).defPadX,
      ),
    );
  }
}
