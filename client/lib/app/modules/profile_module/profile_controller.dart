
import 'package:client/app/modules/dashboard_module/dashboard_binding.dart';
import 'package:client/global_exports.dart';

class ProfileController extends GetxController {
  Map<String, List<ProfileItemModel>> get profileItems => {
        'Account': [
          ProfileItemModel(
            title: 'Profile',
            onPressed: () {
              Nav.toNamed(RoutePaths.myProfile);
            },
          ),
          ProfileItemModel(
            title: 'Transactions',
            onPressed: () {
              dashboardController.currentIndex(1);
            },
          ),
          ProfileItemModel(
              title: 'Notifications',
              onPressed: () {
                AppNotifications.snackbar(
                    type: NotificationType.success, message: 'Comming Soon');
              }),
        ],
        'SECURITY': [
          ProfileItemModel(
              title: 'Change Password',
              onPressed: () {
                AppNotifications.snackbar(
                    type: NotificationType.success, message: 'Comming Soon');
              }),
        ],
        'DANGER': [
          ProfileItemModel(
            title: 'Logout',
            onPressed: logOut,
            colors: ProfileItemColorsModel(
                textColor: AppColors.color.error,
                iconColor: AppColors.color.error,
                containerColor: const Color(0xFF6B4545)),
          ),
        ],
      };

  logOut() async {
    AppNotifications.showModal(
        title: 'Are you sure you want to log out ?',
        subTitle:
            'You will loose your current session and would have to re login to get access to the app',
        onPressed: () {
          appController.logOut();
        },
        footer: Column(
          children: [
            spaceh(20),
            CustomButton(
              onPressed: () {
                Nav.back();
              },
              filled: false,
              title: 'Cancel',
            )
          ],
        ));
  }
}

class ProfileItemModel {
  final String? iconPath;
  final String? title;
  final ProfileItemColorsModel? colors;
  final VoidCallback? onPressed;

  ProfileItemModel({
    this.iconPath,
    this.title,
    this.onPressed,
    this.colors,
  });
}

class ProfileItemColorsModel {
  final Color? textColor;
  final Color? iconColor;
  final Color? containerColor;

  ProfileItemColorsModel({
    this.textColor,
    this.iconColor,
    this.containerColor,
  });

  ProfileItemColorsModel copyWith({
    Color? textColor,
    Color? iconColor,
    Color? containerColor,
  }) {
    return ProfileItemColorsModel(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      containerColor: containerColor ?? this.containerColor,
    );
  }
}

final profileController = getPut(ProfileController());
