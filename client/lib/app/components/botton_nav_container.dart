import 'package:client/global_exports.dart';

class BottomNavContainer extends StatelessWidget {
  const BottomNavContainer(
      {super.key, required this.child, this.color, this.header});

  final Widget child;
  final Widget? header;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (header != null) header!,
        Container(
          color: color ?? AppColors.color.grey400,
          padding: EdgeInsets.only(
            top: 25.h,
            bottom: 40.w,
            right: AppConstatnts.defPadding.w,
            left: AppConstatnts.defPadding.w,
          ),
          child: child,
        ),
      ],
    );
  }
}
