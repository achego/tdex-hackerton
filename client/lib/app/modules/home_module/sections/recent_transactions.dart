import 'dart:math';

import 'package:client/app/components/custom_switcher.dart';
import 'package:client/app/components/quoted_tx_item.dart';
import 'package:client/app/components/transaction_item.dart';
import 'package:client/app/modules/dashboard_module/dashboard_binding.dart';
import 'package:client/app/modules/transaction_detail_module/transaction_detail_binding.dart';
import 'package:client/app/modules/transactions_module/transactions_controller.dart';
import 'package:client/global_exports.dart';
import 'package:get/get.dart';

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Transactions',
              style: TextStyles.subHeading().copyWith(
                  color: AppColors.color.white, fontWeight: FontWeight.w600),
            ),
            spacew(10),
            CustomGestureDetector(
              onTap: () {
                dashboardController.currentIndex(1);
              },
              child: Text(
                'View All',
                style: TextStyles.base().copyWith(
                  color: AppColors.color.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.color.primary,
                  decorationThickness: 2,
                ),
              ),
            )
          ],
        ),
        spaceh(10),
        Obx(() => CustomSwitcher(
              tabs: const ['Quotes', 'Transactions'],
              activeIndex: transactionsController.selectedTab.value,
              onChanged: transactionsController.changeTab,
            )),
        spaceh(15),
        Obx(
          () => (transactionsController.selectedTab.value == 1
                  ? transactionsController.isGettingTransactions.value
                  : transactionsController.isGettingQuotedTransactions.value)
              ? SizedBox(
                  height: 200.h,
                  child: const Center(
                    child: CupertinoActivityIndicator(),
                  ),
                )
              : _buildBasedOnTxtype(),
        )
      ],
    ).defPadX;
  }

  Widget _buildBasedOnTxtype() {
    if (transactionsController.selectedTab.value == 0) {
      return CustomSeparatedListView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        itemBuilder: (conetxt, index) {
          final transaction = transactionsController.quotedTransaction[index];
          return QuotedTransactionItem(
            transaction: transaction,
          );
        },
        itemCount: min(5, transactionsController.quotedTransaction.length),
      );
    }
    return CustomSeparatedListView(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      itemBuilder: (conetxt, index) {
        final transaction = transactionsController.transactions[index];
        return TransactionItem(
          transaction: transaction,
        );
      },
      itemCount: min(5, transactionsController.transactions.length),
    );
  }

}
