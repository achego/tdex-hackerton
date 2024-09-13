import 'package:client/global_exports.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    this.child,
    this.padding,
    this.margin,
    this.height,
    this.width,
    this.borderRadius,
    this.border,
    this.backgroundColor,
    this.borderColor,
    super.key,
    this.alignment,
    this.clipBehavior,
  });
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final BoxBorder? border;
  final AlignmentGeometry? alignment;
  final Clip? clipBehavior;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      clipBehavior: clipBehavior ?? Clip.none,
      alignment: alignment,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.color.grey400,
        border: border ??
            Border.all(
              color: borderColor ?? (Colors.transparent),
            ),
        borderRadius: borderRadius ?? BorderRadius.circular(15.r),
      ),
      child: child,
    );
  }
}
