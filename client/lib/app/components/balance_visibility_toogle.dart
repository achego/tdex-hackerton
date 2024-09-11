import 'package:client/global_exports.dart';

class BalanceVisibilityToogle extends StatelessWidget {
  const BalanceVisibilityToogle({
    super.key,
    this.size = 18,
    this.padding = EdgeInsets.zero,
  });

  final double size;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          appController.toogleBalanceMode();
        },
        child: Padding(
          padding: padding,
          child: square(size,
              child: svgAsset(
                  appController.isBalanceShown.value
                      ? AppIconSvgs.eyeClosed
                      : AppIconSvgs.eyeOpen,
                  color: AppColors.color.textLight)),
        ),
      ),
    );
  }
}
