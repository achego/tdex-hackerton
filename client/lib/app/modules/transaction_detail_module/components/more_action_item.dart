import 'package:client/global_exports.dart';

class MoreActionItem extends StatelessWidget {
  const MoreActionItem({
    super.key,
    required this.action,
  });

  final MoreActionModel action;

  @override
  Widget build(BuildContext context) {
    return CustomGestureDetector(
      onTap: action.onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  square(30,
                      color: AppColors.color.border,
                      borderRadius: kDefBorderRadius,
                      border:
                          Border.all(color: AppColors.color.border, width: 2)),
                  spacew(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          action.title ?? '',
                          style: TextStyles.base()
                              .copyWith(fontSize: 14, height: 1),
                        ),
                        spaceh(5),
                        Text(
                          action.subTitle ?? '',
                          style: TextStyles.base().copyWith(
                              fontSize: 10,
                              color: AppColors.color.textLight,
                              fontWeight: FontWeight.w400,
                              height: 1),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            spacew(10),
            rectangle(7, 15, child: svgAsset(AppIconSvgs.caratRight))
          ],
        ),
      ),
    );
  }
}

class MoreActionModel {
  final String? title;
  final String? subTitle;
  final String? iconsPath;
  final VoidCallback? onPressed;

  MoreActionModel({
    this.title,
    this.subTitle,
    this.iconsPath,
    this.onPressed,
  });
}
