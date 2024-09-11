import 'package:client/global_exports.dart';

import 'dashboard_binding.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  color: AppColors.color.background,
                  border:
                      Border(top: BorderSide(color: AppColors.color.border))),
              child: Builder(builder: (context) {
                final tabs = dashboardController.tabs;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...tabs.map((item) {
                      final index = tabs.indexOf(item);
                      final isActive =
                          dashboardController.currentIndex.value == index;
                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            dashboardController.currentIndex.value = index;
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.all(18.w),
                              child: Container(
                                child: isActive ? item.activeIcon : item.icon,
                              ),
                            ),
                          ),
                        ),
                      );
                    })
                  ],
                );
              })),
        ),
        body: dashboardController.pages[dashboardController.currentIndex.value],
      ),
    );
  }
}
