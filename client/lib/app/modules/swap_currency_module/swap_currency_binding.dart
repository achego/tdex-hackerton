  import 'package:get/get.dart';

import 'swap_currency_controller.dart';

class SwapCurrencyBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SwapCurrencyController());
  }
}

