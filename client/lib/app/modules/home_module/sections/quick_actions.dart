import 'package:client/core/utils/app_notifications.dart';
import 'package:client/global_exports.dart';

class QuickActionSection extends StatelessWidget {
  const QuickActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Actions',
          style: TextStyles.subHeading().copyWith(
              color: AppColors.color.white, fontWeight: FontWeight.w600),
        ),
        spaceh(15),
        GridView.count(
          padding: EdgeInsets.zero,
          mainAxisSpacing: 15.w,
          crossAxisSpacing: 15.w,
          shrinkWrap: true,
          crossAxisCount: 3,
          children: [
            _buildAction(
              'Swap \nCurrency',
              iconPath: AppIconSvgs.swap,
              // onPressed: () => Nav.toNamed(RoutePaths.buyAirtime),
            ),
            _buildAction(
              'Data \nSubscription',
              iconPath: AppIconSvgs.subscription,
              onPressed: () {
                AppNotifications.snackbar(message: 'Comming soon');
              },
            ),
            _buildAction('Other \nServices', onPressed: () {
              AppNotifications.snackbar(message: 'Comming soon');
            }, iconPath: AppIconSvgs.otherUtilities),
          ],
        )
      ],
    ).defPadX;
  }

  // TODO: Add Fasde in animatio to the cards

  _buildAction(
    String text, {
    String? iconPath,
    VoidCallback? onPressed,
  }) {
    return CustomGestureDetector(
      onTap: onPressed,
      child: CustomCard(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (iconPath != null) ...[
              circle(35,
                  color: AppColors.color.border,
                  padding: EdgeInsets.all(7.w),
                  child: svgAsset(iconPath)),
              spaceh(12),
            ],
            Text(
              text,
              style: TextStyles.base(),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
