import 'dart:math';

import 'package:client/app/components/transaction_item.dart';
import 'package:client/app/modules/dashboard_module/dashboard_binding.dart';
import 'package:client/app/modules/transactions_module/transactions_controller.dart';
import 'package:client/global_exports.dart';

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
        spaceh(15),
        Obx(
          () => transactionsController.isGettingTransactions.value
              ? SizedBox(
                  height: 150.h,
                  child: const Center(
                    child: CupertinoActivityIndicator(),
                  ),
                )
              : CustomSeparatedListView(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  itemBuilder: (conetxt, index) {
                    final transaction =
                        transactionsController.transactions[index];
                    return TransactionItem(
                      transaction: transaction,
                    );
                  },
                  itemCount: min(5, transactionsController.transactions.length),
                ),
        )
      ],
    ).defPadX;
  }
}
