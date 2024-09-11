import 'package:get/get.dart';

import 'transaction_success_controller.dart';

late TransactionSuccessController transactionSuccessController;

class TransactionSuccessBinding extends Bindings {
  @override
  void dependencies() {
    transactionSuccessController = Get.put(TransactionSuccessController());
  }
}
