import 'package:client/app/components/balance_visibility_toogle.dart';
import 'package:client/global_exports.dart';

class BalanceSnippetContainer extends StatelessWidget {
  const BalanceSnippetContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final topRadius = Radius.circular(30.r);
    final bottomRadius = Radius.circular(100.r);
    return Obx(
      () => CustomGestureDetector(
        onTap: () => appController.toogleBalanceMode(),
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(maxWidth: 130.w),
          height: 30.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: AppColors.color.border, width: 2)),
              color: AppColors.color.grey400,
              borderRadius: BorderRadius.only(
                topLeft: topRadius,
                topRight: topRadius,
                bottomLeft: bottomRadius,
                bottomRight: bottomRadius,
              )),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Bal:',
                      style: TextStyles.base(fontSizeDiff: -4).copyWith(
                          color: AppColors.color.textLight,
                          fontWeight: FontWeight.w600),
                    ),
                    spacew(2),
                    MoneyAndCurrencyText(
                      amount: double.tryParse(
                              appController.selectedBalance.value.balance ??
                                  '') ??
                          0,
                      obscureAmount: !appController.isBalanceShown.value,
                      style: TextStyles.base(fontSizeDiff: -2)
                          .copyWith(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                spacew(10),
                const BalanceVisibilityToogle(size: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
