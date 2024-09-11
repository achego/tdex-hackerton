import 'package:client/app/modules/home_module/home_page.dart';
import 'package:client/app/modules/profile_module/profile_page.dart';
import 'package:client/app/modules/transactions_module/transactions_page.dart';
import 'package:client/global_exports.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  List<Widget> get pages => [
        const HomePage(),
        const TransactionsPage(),
        const ProfilePage(),
      ];

  List<BottomNavItem> get bottomTabIcons => [
        BottomNavItem(iconPath: AppIconSvgs.home, label: 'Home'),
        BottomNavItem(
            iconPath: AppIconSvgs.transactions, label: 'Transactions'),
        BottomNavItem(iconPath: AppIconSvgs.profile, label: 'Profile'),
      ];

  List<BottomNavigationBarItem> get tabs {
    return bottomTabIcons
        .map((item) => BottomNavigationBarItem(
              icon: _buildTabIcon(item.iconPath, label: item.label),
              activeIcon: _buildTabIcon(item.iconPath,
                  label: item.label, isActive: true),
              label: 'me',
            ))
        .toList();
  }

  final currentIndex = 0.obs;

  Widget _buildTabIcon(String iconPath,
      {bool isActive = false, required String label}) {
    return Column(
      key: Key('$label-$isActive'),
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 22.h,
          child: svgAsset(iconPath,
              color: isActive
                  ? AppColors.color.primary
                  : AppColors.color.textLight),
        ),
        if (isActive) ...[
          spaceh(10),
          Container(
            height: 10.w,
            width: 10,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.color.primary),
          )
        ] else ...[
          spaceh(5),
          Text(
            label,
            style: TextStyles.base()
                .copyWith(fontSize: 12.sp, color: AppColors.color.textLight),
          )
        ]
      ],
    );
  }
}

class BottomNavItem {
  final String iconPath;
  final String label;

  BottomNavItem({required this.iconPath, required this.label});
}
