import 'package:client/app/components/botton_nav_container.dart';
import 'package:client/app/components/custom_scaffold.dart';
import 'package:client/app/components/custom_singlechild_scroll.dart';
import 'package:client/app/components/custom_text_form_field.dart';
import 'package:client/app/modules/log_in_module/log_in_binding.dart';
import 'package:client/core/utils/validator.dart';
import 'package:client/global_exports.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bottomNavigationBar: BottomNavContainer(
          child: CustomButton(
        onPressed: loginController.login,
        isLoading: loginController.isLoading.value,
        title: 'Login',
      )),
      body: CustomSingleChildScroll(
        child: Form(
          key: loginController.loginKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spaceh(30),
              Text(
                "Welcome back",
                style: TextStyles.heading(),
              ),
              spaceh(4),
              Text(
                'Enter your email and your secure password to login',
                style: TextStyles.subHeading(),
              ),
              spaceh(40),
              CustomTextFormField(
                labelText: 'Email ',
                hintText: 'Enter your email address',
                controller: loginController.email,
                keyboardType: TextInputType.emailAddress,
                validator: Validator.validateEmail,
              ),
              spaceh(25),
              CustomTextFormField(
                labelText: 'Password ',
                hintText: 'Enter your password ',
                controller: loginController.password,
                obscureTextWithToggle: true,
                validator: Validator.validatePassword,
              ),
              spaceh(25),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    // Nav.toNamed(RouteP)
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.h, horizontal: 15.w),
                    child: Text.rich(
                      const TextSpan(
                        children: [
                          TextSpan(text: 'Forgot password? '),
                        ],
                      ),
                      style: TextStyles.subHeading().copyWith(
                          fontSize: 14, color: AppColors.color.primary),
                    ),
                  ),
                ),
              )
            ],
          ).defPadX,
        ),
      ),
    );
  }
}
