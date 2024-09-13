import 'package:client/app/components/app_divider.dart';
import 'package:client/app/components/custom_card.dart';
import 'package:client/global_exports.dart';

class CustomSeparatedListView extends StatelessWidget {
  const CustomSeparatedListView({
    required this.itemBuilder,
    required this.itemCount,
    this.physics = const BouncingScrollPhysics(),
    this.padding,
    this.showDivider = true,
    this.divider = const AppDivider(),
    this.shrinkWrap = true,
    super.key,
    this.header,
    this.showHeaderBox = false,
    this.headerBoxSize = 70,
    this.label,
    this.labelStyle,
    this.headerBoxChild,
    this.clipBehavior,
  });

  final int itemCount;
  final Widget? Function(BuildContext conetxt, int index) itemBuilder;
  final ScrollPhysics? physics;
  final EdgeInsets? padding;
  final bool showDivider;
  final bool shrinkWrap;
  final Widget divider;
  final Widget? header;
  final Widget? headerBoxChild;
  final bool showHeaderBox;
  final double headerBoxSize;
  final String? label;
  final TextStyle? labelStyle;
  final Clip? clipBehavior;

  @override
  Widget build(BuildContext context) {
    final list = ListView.separated(
      shrinkWrap: shrinkWrap,
      physics: physics,
      padding: EdgeInsets.zero,
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      separatorBuilder: (context, index) {
        if (showDivider) {
          return divider;
        }
        return const SizedBox.shrink();
      },
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Text(
            label ?? '',
            style: labelStyle ??
                TextStyles.base().copyWith(fontWeight: FontWeight.w600),
          ),
          spaceh(10)
        ],
        Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showHeaderBox) spaceh(headerBoxSize / 2),
                CustomCard(
                  clipBehavior: clipBehavior,
                  padding: padding ?? EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (showHeaderBox) spaceh((headerBoxSize / 2) + 5),
                      if (header != null) header!,
                      Flexible(child: list),
                    ],
                  ),
                ),
              ],
            ),
            if (showHeaderBox)
              Align(
                alignment: Alignment.topCenter,
                child: square(
                  headerBoxSize,
                  color: AppColors.color.grey400,
                  borderRadius: AppConstatnts.defBorderRadius,
                  padding: const EdgeInsets.all(5),
                  child: square(headerBoxSize,
                      color: AppColors.color.border,
                      borderRadius: AppConstatnts.defBorderRadius,
                      child: headerBoxChild),
                ),
              )
          ],
        ),
      ],
    );
  }
}
