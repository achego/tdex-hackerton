import 'package:client/global_exports.dart';

class KeyValueItem extends StatelessWidget {
  const KeyValueItem({
    super.key,
    required this.item,
    this.maxLines = 1,
    this.padding,
    this.animationDutation,
    this.flexRatio = const (key: 1, value: 2),
  });
  final KeyValueModel item;
  final int maxLines;
  final ({int key, int value}) flexRatio;
  final EdgeInsetsGeometry? padding;
  final Duration? animationDutation;
  @override
  Widget build(BuildContext context) {
    final isValueString = item.value is String;
    return CustomAnimatedVisibility(
      duration: animationDutation,
      visibleFraction: item.isVisible ? 1 : 0,
      child: CustomGestureDetector(
        onTap: () {
          if (item.valueCopyable) {
            // TODO Logic to copy
          }
        },
        child: Padding(
          padding: padding ?? EdgeInsets.symmetric(vertical: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: flexRatio.key,
                child: FittedBox(
                  child: Text(
                    item.itemKey,
                    textAlign: TextAlign.start,
                    maxLines: item.keyMaxLine ?? maxLines,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.base().copyWith(
                      color: item.colors?.itemKeyColor ??
                          AppColors.color.textLight,
                    ),
                  ),
                ),
              ),
              spacew(20),
              !isValueString
                  ? item.value
                  : Flexible(
                      flex: flexRatio.value,
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                item.value,
                                textAlign: TextAlign.end,
                                maxLines: item.valueMaxLine ?? maxLines,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyles.base()
                                    .copyWith(color: item.colors?.itemKeyColor),
                              ),
                            ),
                          ),
                          if (item.valueCopyable) ...[
                            spacew(10),
                            square(20,
                                child: FittedBox(
                                  child: Icon(
                                    Icons.copy_rounded,
                                    color: AppColors.color.primary,
                                  ),
                                ))
                          ]
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class KeyValueModel {
  final String itemKey;

  ///```dart
  ///value == String || Widget
  ///```
  final dynamic value;
  final bool isVisible;

  final int? keyMaxLine;
  final int? valueMaxLine;
  final bool valueCopyable;

  final ({
    Color? itemKeyColor,
    Color? valueColor,
  })? colors;

  KeyValueModel({
    required this.itemKey,
    required this.value,
    this.isVisible = true,
    this.valueCopyable = false,
    this.keyMaxLine,
    this.valueMaxLine,
    this.colors,
  });
}

class CustomAnimatedVisibility extends StatelessWidget {
  const CustomAnimatedVisibility({
    super.key,
    this.duration,
    this.visibleFraction = 1,
    required this.child,
    this.alignment = Alignment.bottomLeft,
  });

  final Duration? duration;
  final double visibleFraction;
  final Widget child;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: AnimatedAlign(
        alignment: alignment,
        heightFactor: visibleFraction,
        duration: duration ?? const Duration(milliseconds: 300),
        child: child,
      ),
    );
  }
}
