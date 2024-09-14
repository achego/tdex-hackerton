import 'package:client/app/components/custom_cached_network_imge.dart';
import 'package:client/app/data/models/quoted_transaction_model/quoted_transaction_model.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/app/modules/transaction_success_module/transaction_success_controller.dart';
import 'package:client/global_exports.dart';

import '../modules/confirm_transaction_module/confirm_transaction_controller.dart';

class QuotedTransactionItem extends StatelessWidget {
  const QuotedTransactionItem({
    super.key,
    this.onPressed,
    this.onPressedDisabled = false,
    required this.transaction,
  });

  final VoidCallback? onPressed;
  final bool onPressedDisabled;
  final QuotedTransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    final status = TransactionStatus.fromString(transaction.status ?? "");
    return CustomGestureDetector(
      onTap: () {
        if (onPressedDisabled) {
          return;
        }
        if (onPressed != null) {
          onPressed?.call();
          return;
        }

        Nav.toNamed<ConfirmTransactionArgs>(
          RoutePaths.confirmTransaction,
          arguments: ConfirmTransactionArgs(
            isFromQuotes: true,
            showButtonOptions: status == TransactionStatus.active,
            onProceed: () =>
                placeOrder(transaction.pfiDid ?? "", transaction.id ?? ''),
            onCancel: () =>
                closeOrder(transaction.pfiDid ?? "", transaction.id ?? ''),
            // onCancel: showCloseSkipModal,
            amount: '${transaction.payoutCurrency} ${transaction.payoutAmount}',
            appBarTitle: 'Quote Transaction',
            title: _buildTitleBasedOnStatus(),
            transactionData: [
              ...(transaction.to?.entries ?? []).map((e) => KeyValueModel(
                  itemKey: (e.key).capitalizeFirst ?? "", value: e.value)),
              KeyValueModel(
                  itemKey: 'Currency', value: '${transaction.payoutCurrency}'),
              KeyValueModel(
                  itemKey: 'Description',
                  value:
                      'Send ${transaction.payinCurrency} to ${transaction.payoutCurrency}'),
              if (status == TransactionStatus.active)
                KeyValueModel(
                    itemKey: 'Expires At',
                    value: transaction.expirationTime.toDate.formatDate),
              KeyValueModel(
                itemKey: 'Status',
                value: CustomCard(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  backgroundColor: status.color.withOpacity(0.1),
                  child: Text(
                    status.name,
                    style: TextStyles.base().copyWith(color: status.color),
                  ),
                ),
              ),
            ],
            moreData: [
              KeyValueModel(
                  itemKey: 'You Send',
                  value:
                      '${transaction.payinCurrency} ${transaction.payinAmount}'),
              KeyValueModel(itemKey: 'Sender', value: 'You'),
            ],
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      square(40,
                          color: AppColors.color.textLight,
                          border: Border.all(
                              color: AppColors.color.border, width: 2),
                          borderRadius: AppConstatnts.defBorderRadius,
                          child: const CustomCachedImage(
                              imageUrl: 'transaction.prividerLogo' ?? '')),
                      Positioned(
                        bottom: -(15.w / 2) + 2.w,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(2.w),
                          height: 15.w,
                          width: 15.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.color.background,
                            border: Border.all(
                                color: AppColors.color.border, width: 2),
                          ),
                          child: svgAsset(AppIconSvgs.income),
                        ),
                      )
                    ],
                  ),
                  spacew(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${transaction.payoutCurrency} ${transaction.payoutAmount} Transfer',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.base(),
                        ),
                        spaceh(4),
                        Text(
                          '${transaction.to?.values.first ?? ''}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.base().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color.textLight),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            spacew(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${transaction.payoutCurrency} ${transaction.payoutAmount}',
                  style: TextStyles.base().copyWith(
                      fontWeight: FontWeight.bold, color: status.color),
                ),
                spaceh(4),
                Text(
                  transaction.createdTime.toDate.formatDate,
                  style: TextStyles.base().copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColors.color.textLight,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildTitleBasedOnStatus() {
    return switch (transaction.status) {
      'active' => 'Recipient will recieve',
      'completed' => 'Amount sent',
      'cancelled' => 'Amount',
      'failed' => 'Amount',
      String() => 'Amount',
      null => 'Amount',
    };
  }
}

enum TransactionStatus {
  completed,
  cancelled,
  failed,
  active,
  none;

  static TransactionStatus fromString(String value) {
    final valList = TransactionStatus.values.where((element) =>
        element.name.toLowerCase().trimAll == value.toLowerCase().trimAll);
    if (valList.isEmpty) {
      return TransactionStatus.none;
    }
    return valList.first;
  }

  Color get color {
    return switch (this) {
      TransactionStatus.active => const Color.fromARGB(255, 186, 141, 6),
      TransactionStatus.completed => AppColors.color.success,
      TransactionStatus.cancelled => AppColors.color.error,
      TransactionStatus.failed => AppColors.color.error,
      TransactionStatus.none => AppColors.color.error,
    };
  }
}

placeOrder(String pfiDid, String exchangeId) async {
  showLoading();
  final resp =
      await UserProvider.addOrder(pfiDid: pfiDid, exchangeId: exchangeId);

  showLoading(show: false);

  if (!resp.isOk) {
    AppNotifications.snackbar(message: 'An error occured adding order');
    return;
  }

  Nav.toNamed<TransactionSuccessArgs>(RoutePaths.transactionSuccess,
      arguments: TransactionSuccessArgs(
          title: 'Success', subTitle: 'Order has been placed successfully'));
}

closeOrder(String pfiDid, String exchangeId,
    {bool closeAllRoute = true}) async {
  final isCancel = await Get.dialog<bool>(
        const QuoteCancelDialog(),
      ) ??
      false;

  if (!isCancel) {
    if (closeAllRoute) {
      Nav.offAllNamed(RoutePaths.dashboard);
      return;
    }
    Nav.back();
    return;
  }

  final reason = await Get.dialog<String>(const CloseResonDialog());
  logger(reason, 'The reaspn');
  if (reason == null || reason.length < 5) {
    AppNotifications.snackbar(message: 'Please enter valid reason to cancel');
    return;
  }
  showLoading();

  final resp = await UserProvider.closeQuote(
      pfiDid: pfiDid ?? '', exchangeId: exchangeId, reaso: reason);

  showLoading(show: false);

  if (!resp.isOk) {
    AppNotifications.snackbar(message: 'An error occured closing order');
    return;
  }

  Nav.toNamed<TransactionSuccessArgs>(RoutePaths.transactionSuccess,
      arguments: TransactionSuccessArgs(
          title: 'Success', subTitle: 'Order has been closed successfully'));
}

class CloseResonDialog extends StatelessWidget {
  const CloseResonDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Dialog(
      backgroundColor: AppColors.color.grey400,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            spaceh(20),
            Text(
              'Enter a reason',
              style: TextStyles.heading(),
            ),
            spaceh(4),
            Text(
              'Describe why you want to cancel',
              style: TextStyles.subHeading(),
            ),
            spaceh(20),
            CustomTextFormField(
              controller: controller,
            ),
            spaceh(20),
            CustomButton(
              onPressed: () {
                Nav.back(result: controller.text);
              },
              title: 'Continue',
            ),
            spaceh(20)
          ],
        ).defPadX,
      ),
    );
  }
}

class QuoteCancelDialog extends StatelessWidget {
  const QuoteCancelDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.color.grey400,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            spaceh(20),
            Text(
              'Select An Option',
              style: TextStyles.heading(),
            ),
            spaceh(4),
            Text(
              'Do you want to cancel the quote or skip for later',
              style: TextStyles.subHeading(),
            ),
            spaceh(20),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      Nav.back(result: true);
                    },
                    title: 'Cancel',
                    backgroundColor: AppColors.color.error,
                    textStyle: (currentStyle) =>
                        currentStyle.copyWith(color: AppColors.color.white),
                  ),
                ),
                spacew(16),
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      Nav.back(result: false);
                    },
                    title: 'Skip',
                  ),
                )
              ],
            ),
            spaceh(20)
          ],
        ).defPadX,
      ),
    );
  }
}