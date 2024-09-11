import 'package:get/get.dart';

import 'log_in_controller.dart';

late LogInController loginController;

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    loginController = Get.put(LogInController());
  }
}
