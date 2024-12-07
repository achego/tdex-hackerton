// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:client/global_exports.dart';

class ConfirmTransactionArgs {
  final VoidCallback? onProceed;
  final String? onProceedBtnText;
  final VoidCallback? onCancel;
  final String amount;
  final String? title;
  final String? appBarTitle;
  final num? balBefore;
  final num? balAfter;
  final String? providerLogo;
  final List<KeyValueModel> transactionData;
  final List<KeyValueModel> moreData;
  final bool isFromQuotes;
  final bool showButtonOptions;
  final String? provider;
  ConfirmTransactionArgs({
    this.onProceedBtnText,
    this.onProceed,
    this.onCancel,
    this.provider,
    required this.amount,
    this.balBefore,
    this.balAfter,
    this.providerLogo,
    this.title,
    this.appBarTitle,
    this.isFromQuotes = false,
    this.showButtonOptions = true,
    this.moreData = const [],
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
        ...args.transactionData.map((e) => KeyValueModel(
            itemKey: e.itemKey,
            value: e.value,
            keyMaxLine: 2,
            valueMaxLine: 3)),
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
  List<KeyValueModel> get moreData => [
        ...args.moreData.map((e) => KeyValueModel(
            itemKey: e.itemKey,
            value: e.value,
            keyMaxLine: 2,
            valueMaxLine: 3)),
      ];

  final isBalanceChangeShown = false.obs;

  final showMoredata = false.obs;

  void toogleBalanceChange() async {
    isBalanceChangeShown.toggle();
  }

  void handleConfirmTransaction() {
    args.onProceed?.call();
  }

  handleCancelTransaction() async {}
}
