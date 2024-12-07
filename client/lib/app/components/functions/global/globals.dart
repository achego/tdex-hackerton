import 'dart:async';
import 'package:client/core/utils/app_notifications.dart';
import 'package:client/global_exports.dart';
import 'package:flutter_svg/svg.dart';

SizedBox spaceh(num height) {
  return SizedBox(height: height.h);
}

SliverToBoxAdapter sspaceh(num height) {
  return SliverToBoxAdapter(child: SizedBox(height: height.h));
}

SizedBox spacew(num width) {
  return SizedBox(width: width.w);
}

SizedBox spacehw(num height, num width) {
  return SizedBox(height: height.h, width: width.w);
}

Widget square(num size,
    {Widget? child,
    Color? color,
    EdgeInsets? padding,
    double? borderRadius,
    BoxBorder? border,
    Alignment? alignment}) {
  if (color == null) {
    return SizedBox(height: size.h, width: size.w, child: child);
  }
  return Container(
    padding: padding,
    height: size.w,
    width: size.w,
    alignment: alignment,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
        border: border,
        color: color,
        borderRadius:
            borderRadius == null ? null : BorderRadius.circular(borderRadius)),
    child: child,
  );
}

Widget rectangle(
  double? w,
  double? h, {
  Widget? child,
  Color? color,
  EdgeInsets? padding,
  double? borderRadius,
  BoxBorder? border,
  Alignment? alignment,
}) {
  if (color == null) {
    return SizedBox(height: h?.h, width: w?.w, child: child);
  }
  return Container(
    alignment: alignment,
    padding: padding,
    height: h,
    width: w,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
        border: border,
        color: color,
        borderRadius:
            borderRadius == null ? null : BorderRadius.circular(borderRadius)),
    child: child,
  );
}

SizedBox squareFit(num size, {Widget? child}) {
  return SizedBox(
      height: size.w, width: size.w, child: FittedBox(child: child));
}

Container circle(num size, {Widget? child, Color? color, EdgeInsets? padding}) {
  return Container(
      padding: padding,
      height: size.w,
      width: size.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: child);
}

SvgPicture svgAsset(String path, {Color? color}) {
  return SvgPicture.asset(
    path,
    colorFilter:
        color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
  );
}

S getPut<S>(S dependency, {bool permanent = false}) {
  return Get.put(dependency, permanent: permanent);
}

S getFind<S>(S dependency) {
  return Get.find<S>();
}

Future<bool> getDetelet<S>(S dependency, {bool force = true}) {
  return Get.delete<S>(force: force);
}

void showLoading({bool show = true, int durationTimeout = 20}) async {
  if (Get.isSnackbarOpen) {
    Get.closeAllSnackbars();
  }

  if (show && ((Get.isDialogOpen ?? false) == false || !Get.isSnackbarOpen)) {
    AppNotifications.showLoadingDialog();
    return;
  } else if (!show && (Get.isDialogOpen ?? false) == true) {
    Nav.back();

    for (var i = 0; i < 5; i++) {
      await Future.delayed(500.milliseconds);
      if (Get.isDialogOpen ?? false) {
        Nav.back();
      }
    }
  }
}
