import 'dart:math';
import 'package:client/app/components/currency_selector_item.dart';
import 'package:client/global_exports.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  String get _userGreeting {
    DateTime now = DateTime.now();
    int hour = now.hour;

    final morningEmojis = ['☀️', '🪴', '🍳', '🧘‍♀️', '☕️', '🌞'];
    final eveningEmojis = ['🌙', '🌃', '🌆', '🌙', '✨', '🪐', '🕯️', '✩'];

    if (hour < 12) {
      final random = Random();
      int index = random.nextInt(morningEmojis.length);
      final emoji = morningEmojis[index];
      return 'Good morning $emoji';
    } else if (hour < 18) {
      final random = Random();
      int index = random.nextInt(morningEmojis.length);
      final emoji = morningEmojis[index];
      return 'Good afternoon $emoji';
    } else {
      final random = Random();
      int index = random.nextInt(eveningEmojis.length);
      final emoji = eveningEmojis[index];
      return 'Good evening $emoji';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final user = appController.user.value;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40.w,
                    width: 40.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: AppColors.color.primary.withOpacity(0.2),
                      border: Border.all(
                          color: AppColors.color.primary.withOpacity(0.7)),
                      borderRadius: AppConstatnts.bordeRadius,
                    ),
                    child: Image.asset(
                      appController.avatarFromName(user.fullName ?? ""),
                      fit: BoxFit.cover,
                    ),
                  ),
                  spacew(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _userGreeting,
                        style: TextStyles.base()
                            .copyWith(color: AppColors.color.textLight),
                      ),
                      Text(
                        user.fullName?.split(' ').first.capitalizeFirst ?? "",
                        style: TextStyles.subHeading().copyWith(
                          color: AppColors.color.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              spacew(10),
              const CurrencySelectorItem(),
              rectangle(25, 20, child: svgAsset(AppIconSvgs.notification)),
            ],
          ).defPadX,
        );
      },
    );
  }
}
