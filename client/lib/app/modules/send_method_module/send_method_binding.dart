import 'package:get/get.dart';

import 'send_method_controller.dart';

late SendMethodController sendMethodController;

class SendMethodBinding extends Bindings {
  @override
  void dependencies() {
    sendMethodController = Get.put(SendMethodController());
  }
}
