import 'dart:math';

import 'package:client/app/components/custom_cached_network_imge.dart';
import 'package:client/app/components/functions/global/globals.dart';
import 'package:client/app/data/models/balance_model/balance_model.dart';
import 'package:client/app/modules/add_new_currency_module/add_new_currency_page.dart';
import 'package:client/global_exports.dart';

class CurrencySelectorItem extends StatelessWidget {
  const CurrencySelectorItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final selectedBal = appController.selectedBalance.value;
        return CustomGestureDetector(
          onTap: _showCurrenciesModal,
          child: CustomCard(
            backgroundColor: AppColors.color.border,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
            child: Row(
              children: [
                rectangle(
                  24,
                  20,
                  child: CustomCachedImage(
                    imageUrl: selectedBal.getAvailableCurrency?.imageUrl ?? "",
                  ),
                ),
                spacew(5),
                Text(
                  selectedBal.currency?.toUpperCase() ?? "",
                  style: TextStyles.base(fontSizeDiff: 2)
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                spacew(6),
                Transform.rotate(
                  angle: pi / 2,
                  child: SizedBox(
                      height: 12,
                      width: 12,
                      child: FittedBox(
                        child: svgAsset(
                          AppIconSvgs.caratRight,
                        ),
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _showCurrenciesModal() {
    Get.bottomSheet(const UserCurrenciesModal());
  }
}

class UserCurrenciesModal extends StatelessWidget {
  const UserCurrenciesModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
            color: AppColors.color.grey400,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Currencies',
                  style: TextStyles.heading(),
                ),
                CustomGestureDetector(
                  onTap: () {
                    Nav.back();

                    Get.to(() => const AddNewCurrencyPage());
                  },
                  child: CustomCard(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    backgroundColor: AppColors.color.primary.withOpacity(0.2),
                    child: Text(
                      'Add New',
                      style: TextStyles.base()
                          .copyWith(color: AppColors.color.primary),
                    ),
                  ),
                )
              ],
            ),
            spaceh(25),
            ...appController.userBalances.map((element) {
              final isActive =
                  appController.selectedBalance.value.currency?.toLowerCase() ==
                      element.currency?.toLowerCase();
              return CustomGestureDetector(
                onTap: () {
                  appController.selectedBalance(element);
                  Nav.back();
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      border: isActive
                          ? Border.all(color: AppColors.color.primary)
                          : null,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      square(35,
                          child: CustomCachedImage(
                              imageUrl:
                                  element.getAvailableCurrency?.imageUrl ??
                                      '')),
                      spacew(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${element.getAvailableCurrency?.title ?? ""} (${element.currency?.toUpperCase()})',
                            style: TextStyles.base(fontSizeDiff: 2),
                          ),
                          Text(
                            '${element.getAvailableCurrency?.icon ?? ""}${element.balance ?? ""}',
                            style: TextStyles.base(
                                fontSizeDiff: -2, primary: false),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
