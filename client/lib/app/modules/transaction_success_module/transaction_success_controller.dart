import 'package:client/app/modules/transactions_module/transactions_controller.dart';
import 'package:client/global_exports.dart';

class TransactionSuccessArgs {
  final TransactionStatus status;
  final String title;
  final String subTitle;
  final String? btnText;
  final VoidCallback? onPressed;
  final bool canPop;
  TransactionSuccessArgs({
    this.status = TransactionStatus.success,
    this.canPop = false,
    required this.title,
    required this.subTitle,
    this.btnText,
    this.onPressed,
  });
}

class TransactionSuccessController extends GetxController {
  late TransactionSuccessArgs args;

  @override
  void onInit() {
    super.onInit();
    appController.updateUserBalances();
    transactionsController.getTransactions();

    if ((Get.arguments == null || Get.arguments is! TransactionSuccessArgs)) {
      throw Exception(
          'TransactionSuccessPage recieves and argument of TransactionSuccessController\n\nuse==>> Nav.toNamed(RoutePaths.transactionSuccess, arguments: TransactionSuccessArgs() )\n');
    }
    args = Get.arguments as TransactionSuccessArgs;
  }
}

enum TransactionStatus {
  failure,
  success,
}
