import 'package:get/get.dart';

import 'send_by_pfi_controller.dart';

late SendByPfiController sendByPfiController;

class SendByPfiBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    sendByPfiController = Get.put(SendByPfiController());
  }
}
