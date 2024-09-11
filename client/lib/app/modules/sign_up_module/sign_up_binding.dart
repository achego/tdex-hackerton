import 'package:get/get.dart';

import 'sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SignUpController(), permanent: true);
  }
}
