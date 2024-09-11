import 'package:client/app/data/models/transaction_model/transaction_model.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/global_exports.dart';

class TransactionsController extends GetxController {
  final isGettingTransactions = false.obs;
  final isGettingAirtimeTransactions = false.obs;
  final isGettingDataTransactions = false.obs;

  final transactions = <TransactionModel>[].obs;
  final airtimeTransactions = <TransactionModel>[].obs;
  final dataTransactions = <TransactionModel>[].obs;

  getTransactions() async {
    isGettingTransactions(true && transactions.isEmpty);
    getAirtimeTransaction();
    getDataTransaction();
    final resp = await UserProvider.getTransactions();
    // logger(resp.toJson(), 'Resp Json');
    isGettingTransactions(false);
    if (!resp.isOk) {
      AppNotifications.snackbar(
          message: 'An error occured getting transactions');
      return;
    }
    transactions.value = resp.data?.transactions ?? [];
  }

  getAirtimeTransaction() async {
    isGettingAirtimeTransactions(true);

    final resp =
        await UserProvider.getTransactions(type: TransactionType.airtime);
    // logger(resp.toJson(), 'Airtime Json');
    isGettingAirtimeTransactions(false);
    if (!resp.isOk) {
      // AppNotifications.snackbar(
      //     message: 'An error occured getting transactions');
      return;
    }
    airtimeTransactions.value = resp.data?.transactions ?? [];
  }

  getDataTransaction() async {
    isGettingDataTransactions(true);

    final resp = await UserProvider.getTransactions(type: TransactionType.data);
    logger(resp.toJson(), 'Data Json');
    isGettingDataTransactions(false);
    if (!resp.isOk) {
      // AppNotifications.snackbar(
      //     message: 'An error occured getting transactions');
      return;
    }
    dataTransactions.value = resp.data?.transactions ?? [];
  }
}

final transactionsController = getPut(TransactionsController());
