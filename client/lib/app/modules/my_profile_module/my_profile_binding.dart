import 'package:get/get.dart';

import 'my_profile_controller.dart';

late MyProfileController myProfileItemController;

class MyProfileBinding extends Bindings {
  @override
  void dependencies() {
    myProfileItemController = Get.put(MyProfileController());
  }
}
