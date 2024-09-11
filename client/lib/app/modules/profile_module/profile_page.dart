
import 'package:client/app/modules/profile_module/profile_controller.dart';
import 'package:client/global_exports.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spaceh(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Profile', style: TextStyles.heading()),
              spaceh(35),
              const LabelAndCardItems(
                label: 'PROFILE',
                items: [UserProfilePaddedCard()],
              ),
            ],
          ).defPadX,
          spaceh(15),
          Expanded(
            child: CustomSingleChildScroll(
              child: Column(
                children: [
                  spaceh(15),
                  ...profileController.profileItems.entries.map(
                    (item) => Column(
                      children: [
                        LabelAndCardItems(
                          label: item.key.toUpperCase(),
                          items: item.value
                              .map((profileItem) => ProfileItem(
                                    title: profileItem.title,
                                    iconPath: profileItem.iconPath,
                                    onPressed: profileItem.onPressed,
                                    colors: profileItem.colors,
                                  ))
                              .toList(),
                        ).defPadX,
                        spaceh(30),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    this.iconPath,
    this.title,
    this.colors,
    this.onPressed,
  });

  final String? iconPath;
  final String? title;
  final ProfileItemColorsModel? colors;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed?.call();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  square(52,
                      borderRadius: AppConstatnts.defBorderRadius,
                      color: colors?.containerColor ?? AppColors.color.border),
                  spacew(15),
                  Flexible(
                    child: Text(
                      title ?? '',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.subHeading().copyWith(
                        color: colors?.textColor ?? AppColors.color.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            spacew(15),
            rectangle(
              7,
              14,
              child: svgAsset(
                AppIconSvgs.caratRight,
                color: colors?.textColor ?? AppColors.color.primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserProfilePaddedCard extends StatelessWidget {
  const UserProfilePaddedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final user = appController.user.value;
        return Padding(
          padding:
              const EdgeInsets.symmetric(vertical: AppConstatnts.defPadding),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    square(
                      80,
                      borderRadius: AppConstatnts.defBorderRadius,
                      color: AppColors.color.border,
                      border: Border.all(
                        width: 2,
                        color: AppColors.color.primary,
                      ),
                    ),
                    spacew(15),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '@${user.userName}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyles.subHeading(fontSizeDiff: -2),
                          ),
                          Text(
                            '${user.firstName.capitalize} ${user.lastName.capitalize}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyles.subHeading().copyWith(
                              color: AppColors.color.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              spacew(15),
              square(24, child: svgAsset(AppIconSvgs.editPen))
            ],
          ),
        );
      },
    );
  }
}

class LabelAndCardItems<T extends Widget> extends StatelessWidget {
  const LabelAndCardItems({
    super.key,
    this.items = const [],
    required this.label,
    this.padding,
  });

  final List<T> items;
  final String label;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.subHeading().copyWith(fontSize: 14),
        ),
        spaceh(10),
        CustomSeparatedListView(
            padding: padding ??
                const EdgeInsets.symmetric(
                    horizontal: AppConstatnts.defPadding),
            itemBuilder: (conetxt, index) {
              final item = items[index];
              return item;
            },
            itemCount: items.length)
      ],
    );
  }
}
