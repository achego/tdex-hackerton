import 'package:get/get.dart';

import 'send_to_username_controller.dart';

late SendToUsernameController sendToUsernameController;

class SendToUsernameBinding extends Bindings {
  @override
  void dependencies() {
    sendToUsernameController = Get.put(SendToUsernameController());
  }
}
