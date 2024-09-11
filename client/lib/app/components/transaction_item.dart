import 'package:client/app/components/custom_cached_network_imge.dart';
import 'package:client/app/data/models/transaction_model/transaction_model.dart';
import 'package:client/global_exports.dart';

import '../modules/transaction_detail_module/transaction_detail_controller.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    this.onPressed,
    this.onPressedDisabled = false,
    required this.transaction,
  });

  final VoidCallback? onPressed;
  final bool onPressedDisabled;
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return CustomGestureDetector(
      onTap: () {
        if (onPressedDisabled) {
          return;
        }
        if (onPressed != null) {
          onPressed?.call();
          return;
        }
        Nav.toNamed(RoutePaths.transactionDetail,
            arguments: TransactionDetailArgs(
                onProceed: () {},
                transaction: transaction,
                transactionData: [
                  KeyValueModel(itemKey: 'Recipient', value: transaction.to),
                  KeyValueModel(
                      itemKey: 'Description', value: transaction.description),
                  KeyValueModel(
                      itemKey: 'Reference',
                      value: transaction.id?.toString() ?? ''),
                ]));
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
                          child: CustomCachedImage(
                              imageUrl: transaction.prividerLogo ?? '')),
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
                          transaction.title ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.base(),
                        ),
                        spaceh(4),
                        Text(
                          transaction.subTitle ?? "",
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
                MoneyAndCurrencyText(
                    amount: transaction.amount ?? 0,
                    style: TextStyles.base()
                        .copyWith(fontWeight: FontWeight.bold)),
                spaceh(4),
                Text(
                  transaction.createdAt.toDate.timeOnly,
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
}
