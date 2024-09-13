import 'package:client/app/components/balance_snippet.dart';
import 'package:client/app/components/recieve_method.dart';
import 'package:client/global_exports.dart';

class SendMethodPage extends StatelessWidget {
  const SendMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final ctr = sendMethodController;
    // final user = appController.user.value;
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'Send Method'),
      // bottomNavigationBar: BottomNavContainer(
      //   child: CustomButton(
      //     onPressed: ,
      //     title: 'Continue',
      //   ),
      // ),
      body: CustomSingleChildScroll(
        child: Column(
          children: [
            const BalanceSnippetContainer(),
            spaceh(30),
            ReceiveMethodItem(
              onPressed: () {
                // Nav.toNamed(RoutePaths.sendToUsername);
              },
              title: 'By username',
              subtitle:
                  'Send money to an ${appStrings.appTitle.toLowerCase()} user from their username',
              // child:
            ),
            spaceh(24),
            ReceiveMethodItem(
              onPressed: () {
                // Nav.toNamed(RoutePaths.sendToUsername);
              },
              title: 'From wallet balance',
              subtitle:
                  'Send money to selected currencies from your wallet balance',
              // child:
            ),
            spaceh(24),
            ReceiveMethodItem(
              onPressed: () {
                Nav.toNamed(RoutePaths.sendByPfi);
              },
              title: "Selected PFI's",
              subtitle:
                  "Send money to currencies by using our list of selected PFI's",
              // child:
            ),
          ],
        ).defPadX,
      ),
    );
  }
}
