import 'package:client/app/data/models/quoted_transaction_model/quoted_transaction_model.dart';
import 'package:client/app/data/models/transaction_model/transaction_model.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/core/utils/logger.dart';
import 'package:client/global_exports.dart';

class TransactionsController extends GetxController {
  final isGettingTransactions = false.obs;
  final isGetting = false.obs;
  final isGettingQuotedTransactions = false.obs;

  final selectedTab = 0.obs;

  final transactions = <TransactionModel>[].obs;
  final quotedTransaction = <QuotedTransactionModel>[].obs;

  changeTab(int tab) async {
    selectedTab(tab);
  }

  getTransactions() async {
    isGettingTransactions(true && transactions.isEmpty);
    getQuotedTransaction();
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

  getQuotedTransaction() async {
    isGettingQuotedTransactions(true && quotedTransaction.isEmpty);

    final resp = await UserProvider.getQuotedTransaction();
    // logger(resp.toJson(), 'Airtime Json');
    isGettingQuotedTransactions(false);
    if (!resp.isOk) {
      return;
    }

    logger(resp.data, 'My Quoted Transaction');
    quotedTransaction.value = resp.data ?? [];
  }
}

final transactionsController = getPut(TransactionsController());
