  import 'package:get/get.dart';

import 'wallet_enter_amount_controller.dart';

class WalletEnterAmountBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(WalletEnterAmountController());
  }
}

