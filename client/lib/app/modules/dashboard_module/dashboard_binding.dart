import 'package:get/get.dart';

import 'dashboard_controller.dart';

late DashboardController dashboardController;

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    dashboardController = Get.put(DashboardController());
  }
}
