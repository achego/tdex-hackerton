import 'package:client/app/data/models/transaction_model/transaction_model.dart';
import 'package:client/app/modules/transaction_detail_module/components/more_action_item.dart';
import 'package:client/global_exports.dart';

class TransactionDetailArgs {
  final VoidCallback onProceed;

  final TransactionModel transaction;
  final List<KeyValueModel> transactionData;

  TransactionDetailArgs({
    required this.onProceed,
    required this.transaction,
    required this.transactionData,
  });
}

class TransactionDetailController extends GetxController {
  late TransactionDetailArgs args;
  @override
  void onInit() {
    super.onInit();
    if ((Get.arguments == null || Get.arguments is! TransactionDetailArgs)) {
      throw Exception(
          'TransactionDetailPage recieves and argument of TransactionDetailPage\n\nuse==>> Nav.toNamed(RoutePaths.transactionDetail, arguments: TransactionDetailArgs() )\n');
    }
    isBalanceChangeShown.value = appController.isBalanceShown.value;
    args = Get.arguments as TransactionDetailArgs;
  }

  List<KeyValueModel> get transactionData => [
        ...args.transactionData,
        if (args.transaction.balanceAfter != null)
          KeyValueModel(
              itemKey: 'Balance Before',
              value:
                  MoneyAndCurrencyText(amount: args.transaction.balanceBefore!),
              isVisible: isBalanceChangeShown.value),
        if (args.transaction.balanceAfter != null)
          KeyValueModel(
              itemKey: 'Balance after',
              value: MoneyAndCurrencyText(
                amount: args.transaction.balanceAfter!,
              ),
              isVisible: isBalanceChangeShown.value),
      ];

  List<MoreActionModel> get moreActions => [
        MoreActionModel(
            title: 'Repeat transaction',
            subTitle: 'Make this payment again',
            onPressed: () {
              AppNotifications.snackbar(message: 'Comming soon');
            }),
        MoreActionModel(
            title: 'Share receipt',
            subTitle: 'Share this receipt to your recipient',
            onPressed: () {
              AppNotifications.snackbar(message: 'Comming soon');
            }),
        MoreActionModel(
            title: 'Report transaction',
            subTitle: 'Do you have an issue with this transaction?',
            onPressed: () {
              AppNotifications.snackbar(message: 'Comming soon');
            }),
      ];

  final isBalanceChangeShown = false.obs;

  void toogleBalanceChange() async {
    isBalanceChangeShown.toggle();
  }
}
