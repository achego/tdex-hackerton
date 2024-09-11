import 'package:flutter/material.dart';

class CustomSingleChildScroll extends StatelessWidget {
  const CustomSingleChildScroll(
      {super.key, required this.child, this.alwaysScroll = false});
  final Widget child;
  final bool alwaysScroll;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(
          parent: !alwaysScroll ? null : const AlwaysScrollableScrollPhysics()),
      child: child,
    );
  }
}
