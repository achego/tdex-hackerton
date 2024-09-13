import 'package:client/app/components/app_divider.dart';
import 'package:client/global_exports.dart';

class ReceiveMethodItem extends StatelessWidget {
  const ReceiveMethodItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.child,
    this.onPressed,
  });

  final String title;
  final String subtitle;
  final Widget? child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomGestureDetector(
      onTap: onPressed,
      child: CustomCard(
        padding: const EdgeInsets.all(AppConstatnts.defPadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title,
              style: TextStyles.subHeading().copyWith(
                  color: AppColors.color.white, fontWeight: FontWeight.w700)),
          spaceh(4),
          Text(subtitle,
              style: TextStyles.base(fontSizeDiff: -2).copyWith(
                color: AppColors.color.textLight,
              )),
          spaceh(15),
          const AppDivider(),
          if (child != null) ...[
            spaceh(15),
            child!,
          ]
        ]),
      ),
    );
  }
}

class ActivityButton extends StatelessWidget {
  const ActivityButton({
    super.key,
    required this.title,
    this.onPressed,
    this.iconPath,
  });

  final String title;
  final String? iconPath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomGestureDetector(
      onTap: onPressed,
      child: CustomCard(
        backgroundColor: AppColors.color.border,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4),
        child: Row(
          children: [
            if (iconPath != null) svgAsset(iconPath!),
            spacew(4),
            Text(
              title,
              style: TextStyles.base().copyWith(color: AppColors.color.primary),
            )
          ],
        ),
      ),
    );
  }
}
