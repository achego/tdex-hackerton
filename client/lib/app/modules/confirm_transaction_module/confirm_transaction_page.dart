import 'package:client/app/components/custom_card.dart';
import 'package:client/app/components/custom_separated_listview.dart';
import 'package:client/app/components/custom_switch.dart';
import 'package:client/global_exports.dart';

import 'confirm_transaction_binding.dart';

class ConfirmTransactionPage extends StatelessWidget {
  const ConfirmTransactionPage({super.key});

  get math => null;

  @override
  Widget build(BuildContext context) {
    final ctr = confirmTransactionController;

    return CustomScaffold(
      appBar: const CustomAppBar(title: 'Confirm Transaction'),
      bottomNavigationBar: BottomNavContainer(
        child: CustomButton(
          onPressed: ctr.handleConfirmTransaction,
          title: 'Continue',
        ),
      ),
      body: CustomSingleChildScroll(
        child: Column(
          children: [
            spaceh(20),
            Obx(
              () => CustomSeparatedListView(
                showHeaderBox: true,
                headerBoxChild: Image.asset(
                  ctr.args.providerLogo ?? "",
                  fit: BoxFit.cover,
                ),
                padding: kDefPaddingX,
                header: Column(
                  children: [
                    spaceh(10),
                    Text(
                      'Amount To be deducted',
                      style: TextStyles.base(fontSizeDiff: -3).copyWith(
                        color: AppColors.color.textLight,
                      ),
                    ),
                    MoneyAndCurrencyText(
                      amount: ctr.args.amount,
                      style: TextStyles.heading(fontSizeDiff: 5),
                    ),
                    spaceh(10),
                  ],
                ),
                itemBuilder: (conetxt, index) {
                  final item = ctr.transactionData[index];
                  return KeyValueItem(item: item);
                },
                itemCount: ctr.transactionData.length,
              ),
            ),
            spaceh(15),
            if (ctr.args.balAfter != null && ctr.args.balBefore != null)
              Obx(
                () => CustomGestureDetector(
                  onTap: () => ctr.toogleBalanceChange(),
                  child: CustomCard(
                    padding: const EdgeInsets.all(kDefPadding),
                    child: IgnorePointer(
                      child: KeyValueItem(
                        padding: EdgeInsets.zero,
                        item: KeyValueModel(
                          itemKey: 'Show Balance change',
                          colors: (
                            itemKeyColor: AppColors.color.white,
                            valueColor: null
                          ),
                          value: CustomSwitch(
                              value: ctr.isBalanceChangeShown.value),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ).defPadX,
      ),
    );
  }
}
