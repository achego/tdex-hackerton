import 'package:get/get.dart';

import 'send_from_wallet_controller.dart';

late SendFromWalletController sendFromWalletController;

class SendFromWalletBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
   sendFromWalletController =  Get.put(SendFromWalletController());
  }
}
