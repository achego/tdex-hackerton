import 'package:client/app/components/custom_cached_network_imge.dart';
import 'package:client/app/modules/transaction_detail_module/transaction_detail_binding.dart';
import 'package:client/global_exports.dart';
import 'components/more_action_item.dart';

class TransactionDetailPage extends StatelessWidget {
  const TransactionDetailPage({super.key});

  get math => null;

  @override
  Widget build(BuildContext context) {
    final ctr = transactionDetailController;
    final transaction = ctr.args.transaction;

    return CustomScaffold(
      appBar: const CustomAppBar(title: 'Transaction Detail'),
      body: CustomSingleChildScroll(
        child: Column(
          children: [
            spaceh(20),
            Obx(
              () => CustomSeparatedListView(
                showHeaderBox: true,
                headerBoxChild:
                    CustomCachedImage(imageUrl: transaction.prividerLogo ?? ""),
                padding: kDefPaddingX,
                header: Column(
                  children: [
                    spaceh(10),
                    Text(
                      '${transaction.createdAt.toDate.formatDate} at ${ctr.args.transaction.createdAt.toDate.timeOnly}',
                      style: TextStyles.base(fontSizeDiff: -3).copyWith(
                        color: AppColors.color.textLight,
                      ),
                    ),
                    MoneyAndCurrencyText(
                      amount: transaction.amount ?? 0,
                      style: TextStyles.heading(fontSizeDiff: 5),
                    ),
                    spaceh(10),
                  ],
                ),
                itemBuilder: (conetxt, index) {
                  final item = ctr.transactionData[index];
                  return KeyValueItem(item: item, maxLines: 3);
                },
                itemCount: ctr.transactionData.length,
              ),
            ),
            spaceh(15),
            if (transaction.balanceAfter != null &&
                transaction.balanceBefore != null)
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
                          value: IgnorePointer(
                              child: CustomSwitch(
                                  value: ctr.isBalanceChangeShown.value)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            spaceh(20),
            CustomSeparatedListView(
              label: 'More Actions',
              itemBuilder: (conetxt, index) {
                final action = ctr.moreActions[index];
                return MoreActionItem(action: action);
              },
              itemCount: ctr.moreActions.length,
            ),
          ],
        ).defPadX,
      ),
    );
  }
}
