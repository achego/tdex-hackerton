import 'package:client/app/components/custom_gesture_detector.dart';
import 'package:client/core/utils/app_styles.dart';
import 'package:client/global_exports.dart';

import 'confirm_transaction_binding.dart';

class ConfirmTransactionPage extends StatelessWidget {
  const ConfirmTransactionPage({super.key});

  get math => null;

  @override
  Widget build(BuildContext context) {
    final ctr = confirmTransactionController;

    return CustomScaffold(
      appBar:
          CustomAppBar(title: ctr.args.appBarTitle ?? 'Confirm Transaction'),
      bottomNavigationBar: !ctr.args.showButtonOptions
          ? null
          : BottomNavContainer(
              child: Row(
                children: [
                  Expanded(
                      child: CustomButton(
                    backgroundColor: AppColors.color.error,
                    textStyle: (currentStyle) =>
                        currentStyle.copyWith(color: AppColors.color.white),
                    onPressed: () {
                      if (ctr.args.onCancel != null) {
                        ctr.args.onCancel?.call();
                        return;
                      }
                      ctr.handleCancelTransaction();
                    },
                    title: 'Cancel',
                  )),
                  spacew(15),
                  Expanded(
                      child: CustomButton(
                    onPressed: () {
                      if (ctr.args.onProceed != null) {
                        ctr.args.onProceed?.call();
                        return;
                      }
                      ctr.handleConfirmTransaction();
                    },
                    title: 'Pay Now',
                  ))
                ],
              ),
            ),
      body: CustomSingleChildScroll(
        child: Column(
          children: [
            spaceh(20),
            Obx(
              () => CustomSeparatedListView2(
                showHeaderBox: true,
                clipBehavior: Clip.antiAlias,
                headerBoxChild: Image.asset(
                  ctr.args.providerLogo ?? "",
                  fit: BoxFit.cover,
                ),
                padding: EdgeInsets.zero,
                header: Column(
                  children: [
                    spaceh(10),
                    Text(
                      ctr.args.title ?? 'Amount To be send',
                      style: TextStyles.base(fontSizeDiff: -3).copyWith(
                        color: AppColors.color.textLight,
                      ),
                    ),
                    Text(
                      ctr.args.amount,
                      style: TextStyles.heading(fontSizeDiff: 5),
                    ),
                    spaceh(10),
                  ],
                ),
                children: [
                  ...ctr.transactionData.map((e) => KeyValueItem(
                        item: e,
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 16),
                      )),
                  CustomGestureDetector(
                    onTap: () {
                      ctr.showMoredata.toggle();
                    },
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      color: AppColors.color.border,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ctr.showMoredata.value
                                ? 'Hide Payin Details'
                                : 'Show Payin Details',
                            style: TextStyles.base(),
                          ),
                          const Icon(Icons.chevron_right_outlined)
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    child: AnimatedAlign(
                      alignment: Alignment.center,
                      duration: 300.milliseconds,
                      heightFactor: ctr.showMoredata.value ? 1 : 0,
                      child: Column(
                        children: [
                          ...ctr.moreData.map((e) => Container(
                                color: AppColors.color.border,
                                child: KeyValueItem(
                                  item: e,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 16),
                                ),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
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
