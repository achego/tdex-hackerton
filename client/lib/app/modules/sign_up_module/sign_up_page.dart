import 'package:client/app/components/custom_linear_page_indicator.dart';
import 'package:client/global_exports.dart';

import 'sign_up_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: signUpController.currentSubPage.value <= 0,
      onPopInvoked: (didPop) {
        if (signUpController.currentSubPage.value > 0) {
          signUpController.navigate(
              pageIndex: signUpController.currentSubPage.value - 1);
          return;
        }
      },
      child: CustomScaffold(
        bottomNavigationBar: BottomNavContainer(
          child: CustomButton(
            onPressed: () {
              signUpController.onContinueClicked();
            },
            title: 'Continue',
          ),
        ),
        body: Obx(
          () => Column(
            children: [
              spaceh(20),
              CustomLinearPageIndicator(
                count: signUpController.signUpSubScreens.length,
                currentIndex: signUpController.currentSubPage.value,
              ).defPadX,
              spaceh(20),
              Expanded(
                child: PageView.builder(
                  itemCount: signUpController.signUpSubScreens.length,
                  controller: signUpController.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return signUpController.signUpSubScreens[index];
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
