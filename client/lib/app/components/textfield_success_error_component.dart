import 'package:client/global_exports.dart';

class TextFieldSuccessFailureComponent extends StatelessWidget {
  const TextFieldSuccessFailureComponent({
    super.key,
    this.isSuccess,
  });

  final bool? isSuccess;

  @override
  Widget build(BuildContext context) {
    return isSuccess == null
        ? const SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.all(12.h),
            child: Container(
              height: 20.w,
              width: 20.w,
              padding: EdgeInsets.all(3.w),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSuccess!
                        ? AppColors.color.success
                        : AppColors.color.error,
                  )),
              child: FittedBox(
                child: Icon(
                  !isSuccess! ? Icons.close : Icons.check,
                  color: isSuccess!
                      ? AppColors.color.success
                      : AppColors.color.error,
                ),
              ),
            ),
          );
  }
}
