import 'package:client/global_exports.dart';

class CustomGestureDetector extends StatelessWidget {
  const CustomGestureDetector({super.key, this.onTap, this.child});

  final void Function()? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(color: kTransparent, child: child),
    );
  }
}
