import 'package:client/app/components/custom_cached_network_imge.dart';
import 'package:client/app/data/models/balance_model/balance_model.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/global_exports.dart';

class SwapCurrencyController extends GetxController {
  final fromBalance = const BalanceModel().obs;
  final toBalance = const BalanceModel().obs;

  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  String get getFee {
    final fee = 0.015 * (double.tryParse(toController.text) ?? 0);
    return '${toBalance.value.getAvailableCurrency?.icon ?? ""}$fee';
  }

  String get yourecieve {
    final fee = 0.015 * (double.tryParse(toController.text) ?? 0);
    final reciev = (double.tryParse(toController.text) ?? 0) - fee;
    return '${toBalance.value.getAvailableCurrency?.icon ?? ""}$reciev';
  }

  // String get rateText

  selectBalance({bool isFrom = true}) async {
    final balance = await Get.bottomSheet<BalanceModel>(BalanceSelectorSheet(
      title: isFrom ? 'Swap from' : 'Swap to',
    ));

    if (balance == null) {
      return;
    }

    if (isFrom) {
      fromBalance.value = balance;
    } else {
      toBalance.value = balance;
    }

    calculateRate();
  }

  calculateRate() {
    logger('Here', '');
    final toRate = appController.currencyRates.where((p0) =>
        p0.symbol?.toLowerCase() == toBalance.value.currency?.toLowerCase());
    final fromRate = appController.currencyRates.where((p0) =>
        p0.symbol?.toLowerCase() == fromBalance.value.currency?.toLowerCase());

    if (toRate.isEmpty || fromRate.isEmpty) {
      return;
    }

    final gottenAmount =
        ((toRate.first.rate ?? 0) / (fromRate.first.rate ?? 1)) *
            (double.tryParse(fromController.text) ?? 0);

    toController.text = gottenAmount.toString();
    fromBalance.refresh();
  }

  handelSawap() async {
    if ((double.tryParse(fromBalance.value.balance ?? '') ?? 0) <
        (double.tryParse(fromController.trimedText) ?? 0)) {
      AppNotifications.snackbar(message: 'Insuffient balance');
      return;
    }
    showLoading();
    final resp = await UserProvider.swapCurrency(
        from: fromBalance.value.currency ?? '',
        to: toBalance.value.currency ?? "",
        amount: double.tryParse(fromController.text) ?? 0);
    showLoading(show: false);
    if (!resp.isOk) {
      AppNotifications.snackbar(message: 'An error occured swapping currency');
      return;
    }
    appController.updateUserBalances();
    await AppNotifications.snackbar(
        message: 'Swap success', type: NotificationType.success);
    appWait(300);
    Get.back();
  }
}

class BalanceSelectorSheet extends StatelessWidget {
  const BalanceSelectorSheet({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.color.grey400,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      child: Column(
        children: [
          spaceh(10),
          rectangle(50, 5, color: AppColors.color.border),
          spaceh(20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyles.heading(),
            ),
          ),
          spaceh(20),
          CustomSeparatedListView(
              backgroundColor: AppColors.color.background,
              itemBuilder: (conetxt, index) {
                final balance = appController.userBalances[index];
                return CustomGestureDetector(
                  onTap: () {
                    Nav.back(result: balance);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 10),
                    child: Row(
                      children: [
                        rectangle(44, 30,
                            child: CustomCachedImage(
                                imageUrl:
                                    balance.getAvailableCurrency?.imageUrl ??
                                        '')),
                        spacew(15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              balance.getAvailableCurrency?.title ?? '',
                              style: TextStyles.base(fontSizeDiff: 3),
                            ),
                            Text(
                              '${balance.getAvailableCurrency?.icon ?? ''}${balance.balance ?? ''}',
                              style: TextStyles.base(
                                  fontSizeDiff: 3, primary: false),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: appController.userBalances.length)
        ],
      ).defPadX,
    );
  }
}
