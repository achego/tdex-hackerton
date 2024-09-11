import 'package:client/core/theme/colors/app_colors.dart';
import 'package:client/core/utils/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_styles.dart';

enum CustomButtonType {
  base,
  outlined;
}

class CustomButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final double height;
  final Color? disabledColor;
  final TextStyle Function(TextStyle currentStyle)? textStyle;
  final bool isLoading;
  final bool isDisabled;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double fontSize;
  final VoidCallback onPressed;
  final bool filled;
  final Widget? widget;
  final Border? border;
  final double? borderRadius;
  final bool widthFitText;
  final CustomButtonType type;

  const CustomButton({
    super.key,
    this.title = '',
    this.type = CustomButtonType.base,
    this.backgroundColor,
    this.textStyle,
    this.isLoading = false,
    this.isDisabled = false,
    this.padding,
    this.width,
    this.fontSize = 15,
    required this.onPressed,
    this.disabledColor,
    this.height = AppConstatnts.buttonHeight,
    this.filled = true,
    this.widget,
    this.border,
    this.borderRadius,
    this.widthFitText = false,
  });

  get _basetextStyle => TextStyles.subHeading().copyWith(
      fontSize: fontSize,
      color: (filled ? AppColors.color.textDark : AppColors.color.primary));

  Color? get _currentStateBgColor => isDisabled
      ? AppColors.color.grey100
      : backgroundColor ?? (!filled ? null : AppColors.color.primary);

  Widget get _btnContent => isLoading
      ? const CupertinoActivityIndicator(color: Colors.white)
      : widget ??
          Text(title, style: textStyle?.call(_basetextStyle) ?? _basetextStyle);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (isLoading || isDisabled)
          ? null
          : () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus &&
                  currentFocus.focusedChild != null) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
              onPressed();
            },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: height.h,
        width: widthFitText ? null : (width ?? double.infinity),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                borderRadius ?? AppConstatnts.defBorderRadius),
            // color: filled ? _currentStateBgColor : Colors.transparent,
            color: _currentStateBgColor,
            // gradient: !filled
            //     ? null
            //     : const LinearGradient(
            //         colors: [
            //           Color.fromARGB(255, 12, 46, 100),
            //           AppColors.primary30,
            //         ],
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //       ),
            border: border ??
                (!filled
                    ? Border.all(color: AppColors.color.primary, width: 2)
                    : null)),
        child: Padding(
          padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
          child: _btnContent,
        ),
      ),
    );
  }
}
