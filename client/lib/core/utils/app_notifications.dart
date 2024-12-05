import 'package:client/global_exports.dart';

class NotificationConfig {
  final VoidCallback? onPressed;
  final String? title;
  final String? subTitle;
  final String? iconPath;
  final Widget? footer;
  final String btnTitle;
  final Color? btnColor;
  final NotificationType type;

  const NotificationConfig({
    this.onPressed,
    this.title,
    this.subTitle,
    this.footer,
    this.iconPath,
    this.btnColor,
    this.btnTitle = 'Okay',
    this.type = NotificationType.failure,
  });
}

class AppNotifications {
  static showModal({
    bool isDismisible = true,
    Widget? child,
    VoidCallback? onPressed,
    String? title,
    String? iconPath,
    String? subTitle,
    Widget? footer,
    String btnTitle = 'Okay',
    Color? btnColor,
    NotificationType type = NotificationType.failure,
  }) {
    final config = NotificationConfig(
        onPressed: onPressed,
        title: title,
        subTitle: subTitle,
        footer: footer,
        btnTitle: btnTitle,
        type: type,
        iconPath: iconPath,
        btnColor: btnColor);
    Get.bottomSheet(
      child ?? BottomModalSheet(config: config),
      isDismissible: isDismisible,
      elevation: 0,
    );
  }

  static Future snackbar({
    String? message,
    Duration? duration,
    SnackPosition? snackPosition,
    NotificationType type = NotificationType.failure,
  }) async {
    String title = appStrings.errorText.errorOccured;
    Color color = AppColors.color.error;
    switch (type) {
      case NotificationType.failure:
        title = appStrings.errorText.errorOccured;
        color = AppColors.color.error;

        break;
      case NotificationType.success:
        title = appStrings.success;
        color = AppColors.color.success;
        break;
      default:
    }

    if (Get.isSnackbarOpen) {
      return;
    }
    // return ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);

    return Get.snackbar(
      title,
      message ?? '',
      barBlur: 1,
      duration: duration ?? const Duration(seconds: 3),
      backgroundColor: AppColors.color.primary.withOpacity(0.2),
      snackPosition: snackPosition,
      leftBarIndicatorColor: color,
      snackStyle: SnackStyle.FLOATING,
    ).future;
  }

  static showLoadingDialog() {
    Get.dialog(const LoadingDialog());
  }
}

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent.withOpacity(0.3),
      insetPadding: EdgeInsets.zero,
      child: SizedBox(
        width: double.infinity,
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Please wait...',
              style: TextStyles.heading(),
            ),
            spaceh(30),
            square(50,
                child: const FittedBox(child: CupertinoActivityIndicator()))
          ],
        ),
      ),
    );
  }
}

class BottomModalSheet extends StatefulWidget {
  const BottomModalSheet({super.key, required this.config});

  final NotificationConfig config;

  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {
  String svgPath = AppIconSvgs.success;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(30.r);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.color.grey400,
        borderRadius: BorderRadius.only(
          topLeft: radius,
          topRight: radius,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: AppConstatnts.defPadding),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            spaceh(10),
            rectangle(60, 6, color: AppColors.color.border, borderRadius: 100),
            spaceh(20),
            square(80, child: svgAsset(widget.config.iconPath ?? iconPath)),
            spaceh(20),
            Text(
              widget.config.title ?? widget.config.type.title,
              textAlign: TextAlign.center,
              style: TextStyles.subHeading(
                fontSizeDiff: 2,
              ).copyWith(
                  color: AppColors.color.white, fontWeight: FontWeight.w600),
            ),
            spaceh(10),
            Text(
              widget.config.subTitle ?? '',
              textAlign: TextAlign.center,
              style: TextStyles.base(fontSizeDiff: -2)
                  .copyWith(color: AppColors.color.textLight),
            ),
            spaceh(30),
            CustomButton(
                backgroundColor: widget.config.btnColor,
                onPressed: () {
                  if (widget.config.onPressed == null) {
                    Nav.back();
                    return;
                  }
                  widget.config.onPressed?.call();
                },
                title: widget.config.btnTitle),
            if (widget.config.footer != null) widget.config.footer!,
            spaceh(40)
          ],
        ),
      ),
    );
  }

  String get iconPath {
    return switch (widget.config.type) {
      NotificationType.success => AppIconSvgs.success,
      NotificationType.failure => AppIconSvgs.failed,
    };
  }
}

enum NotificationType {
  success(title: 'Success'),
  failure(title: 'Failed');

  const NotificationType({required this.title});

  final String title;
}
