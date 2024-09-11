
import 'package:client/global_exports.dart';

class ConfirmTransactionArgs {
  final VoidCallback onProceed;
  final num amount;
  final num? balBefore;
  final num? balAfter;
  final String? providerLogo;
  final List<KeyValueModel> transactionData;
  ConfirmTransactionArgs({
    required this.onProceed,
    required this.amount,
    this.balBefore,
    this.balAfter,
    this.providerLogo,
    required this.transactionData,
  });
}

class ConfirmTransactionController extends GetxController {
  late ConfirmTransactionArgs args;

  @override
  void onInit() {
    super.onInit();
    if ((Get.arguments == null || Get.arguments is! ConfirmTransactionArgs)) {
      throw Exception(
          'ConfirmTransactionPage recieves and argument of ConfirmTransactionController\n\nuse==>> Nav.toNamed(RoutePaths.ConfirmTransaction, arguments: ConfirmTransactionArgs() )\n');
    }
    args = Get.arguments as ConfirmTransactionArgs;
    isBalanceChangeShown.value = appController.isBalanceShown.value;
  }

  List<KeyValueModel> get transactionData => [
        ...args.transactionData,
        if (args.balAfter != null)
          KeyValueModel(
              itemKey: 'Balance Before',
              value: MoneyAndCurrencyText(amount: args.balBefore!),
              isVisible: isBalanceChangeShown.value),
        if (args.balAfter != null)
          KeyValueModel(
              itemKey: 'Balance after',
              value: MoneyAndCurrencyText(
                amount: args.balAfter!,
              ),
              isVisible: isBalanceChangeShown.value),
      ];

  final isBalanceChangeShown = false.obs;

  void toogleBalanceChange() async {
    isBalanceChangeShown.toggle();
  }

  void handleConfirmTransaction() {
    args.onProceed.call();
  }
}
