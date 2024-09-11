import 'package:client/global_exports.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    this.height = 1,
    this.thickness,
    this.color,
    super.key,
  });
  final double height;
  final double? thickness;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: thickness,
      color: color ?? AppColors.color.border,
    );
  }
}
