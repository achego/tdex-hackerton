import 'package:client/global_exports.dart';

class CustomLinearPageIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;
  const CustomLinearPageIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ...List.generate(count, (index) => index).map(
              (e) {
                final isActive = e <= currentIndex;
                final isFrist = e == 0;
                final isLast = e == count - 1;
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: isLast ? 0 : 5.w, left: isFrist ? 0 : 5.w),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 4.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isActive
                            ? AppColors.color.primary
                            : AppColors.color.grey400,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        spaceh(8),
        Text(
          '${currentIndex + 1} of $count',
          style:
              TextStyles.subHeading().copyWith(color: AppColors.color.primary),
        )
      ],
    );
  }
}
