import 'package:client/global_exports.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    required this.value,
    this.onChanged,
  });

  final bool value;
  final Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    // Default cupertino switch padding 4
    return SizedBox(
      height: (25 + (4 * 2)).h,
      child: FittedBox(
        child: CupertinoSwitch(
          thumbColor: AppColors.color.white,
          trackColor: AppColors.color.textLight,
          activeColor: AppColors.color.primary,
          value: value,
          onChanged: onChanged ?? (val) {},
        ),
      ),
    );
  }
}
