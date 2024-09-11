import 'package:get/get.dart';

import 'confirm_transaction_controller.dart';

late ConfirmTransactionController confirmTransactionController;

class ConfirmTransactionBinding extends Bindings {
  @override
  void dependencies() {
    confirmTransactionController =
        Get.put(ConfirmTransactionController(), tag: 'main');
  }
}
