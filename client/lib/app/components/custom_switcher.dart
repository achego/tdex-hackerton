import 'package:client/global_exports.dart';

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher(
      {super.key,
      required this.tabs,
      this.onChanged,
      this.activeIndex = 0,
      this.backgroundColor,
      this.activeColor,
      this.reverseColors = false,
      this.width});

  final List<String> tabs;
  final int activeIndex;
  final Function(int value)? onChanged;
  final Color? backgroundColor;
  final Color? activeColor;
  final bool reverseColors;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: backgroundColor ??
          (reverseColors ? AppColors.color.background : null),
      padding: const EdgeInsets.all(5),
      borderRadius: BorderRadius.circular(8),
      width: width ?? context.width * 0.6,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          ...tabs.map((e) {
            final currentIndex = tabs.indexOf(e);
            final isActive = currentIndex == activeIndex;
            return Expanded(
              child: CustomGestureDetector(
                onTap: () {
                  onChanged?.call(currentIndex);
                },
                child: CustomCard(
                  backgroundColor: isActive
                      ? (activeColor ??
                          (reverseColors ? null : AppColors.color.background))
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  alignment: Alignment.center,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: FittedBox(
                      child: Text(
                        e,
                        style: TextStyles.base(),
                      ),
                    ),
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
