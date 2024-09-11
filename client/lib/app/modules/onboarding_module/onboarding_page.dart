import 'package:client/app/components/botton_nav_container.dart';
import 'package:client/global_exports.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavContainer(
        color: Colors.transparent,
        child: Row(
          children: [
            Expanded(
                child: CustomButton(
              onPressed: () {
                Nav.toNamed(RoutePaths.signUp);
              },
              filled: false,
              title: 'Sign up',
            )),
            spacew(30),
            Expanded(
              child: CustomButton(
                onPressed: () {
                  Nav.toNamed(RoutePaths.logIn);
                },
                title: 'Log in',
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          spaceh(50),
          Text.rich(
            TextSpan(children: [
              const TextSpan(text: 'Welcome to'),
              TextSpan(
                  text: '\nIgbigi',
                  style: TextStyle(color: AppColors.color.primary)),
            ]),
            style: TextStyles.heading()
                .copyWith(fontSize: 35.sp, fontWeight: FontWeight.w600),
          ),
          spaceh(40),
        ],
      ).defPadX,
    );
  }
}
