import 'dart:math';

import 'package:client/app/components/balance_snippet.dart';
import 'package:client/app/components/custom_switcher.dart';
import 'package:client/app/modules/send_from_wallet_module/send_from_wallet_binding.dart';
import 'package:client/global_exports.dart';

class SendFromWalletPage extends StatefulWidget {
  const SendFromWalletPage({super.key});

  @override
  State<SendFromWalletPage> createState() => _SendFromWalletPageState();
}

class _SendFromWalletPageState extends State<SendFromWalletPage> {
  final ctr = sendFromWalletController;
  @override
  void initState() {
    super.initState();
    ctr.setpayoutDetails();
  }

  @override
  Widget build(BuildContext context) {
    // final user = appController.user.value;
    return Obx(
      () {
        final value = ctr.selectedMethods.value;
        return CustomScaffold(
          appBar: const CustomAppBar(title: 'Send from Wallet'),
          bottomNavigationBar: BottomNavContainer(
            child: CustomButton(
              onPressed: ctr.handleContinue,
              title: 'Continue',
            ),
          ),
          body: CustomSingleChildScroll(
            child: Form(
              key: ctr.sendWalletKey,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BalanceSnippetContainer(),
                  spaceh(20),
                  CustomTextFormField(
                    hintText: 'Select the recipient currency',
                    labelText: 'Send Currency',
                    readOnly: true,
                    onTap: ctr.pickCurrency,
                    controller: ctr.currency,
                    validator: Validator.validateFieldNotEmpty,
                    trailling: Transform.rotate(
                        angle: pi / 2, child: const Icon(Icons.chevron_right)),
                  ),
                  spaceh(20),
                  if (ctr.offering != null) ...[
                    Text('Payment Method',
                        style: TextStyles.base(fontSizeDiff: 5)),
                    spaceh(4),
                    CustomSwitcher(
                      tabs: ctr.payoutMethods,
                      activeIndex: value,
                      onChanged: (value) {
                        ctr.changePayoutMethod(value);
                      },
                    ),
                    spaceh(25),
                    ...ctr.getpayoutDetails,
                  ]
                ],
              ).defPadX,
            ),
          ),
        );
      },
    );
  }
}
