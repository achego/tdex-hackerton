  import 'package:get/get.dart';

import 'donate_overview_controller.dart';

class DonateOverviewBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DonateOverviewController());
  }
}

