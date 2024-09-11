import 'package:get/get.dart';

import 'transaction_detail_controller.dart';

late TransactionDetailController transactionDetailController;

class TransactionDetailBinding extends Bindings {
  @override
  void dependencies() {
    transactionDetailController = Get.put(TransactionDetailController());
  }
}
