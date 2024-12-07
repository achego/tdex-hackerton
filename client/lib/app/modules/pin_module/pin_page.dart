import 'package:client/app/components/custom_number_pad.dart';
import 'package:client/global_exports.dart';
import 'package:pinput/pinput.dart';

class PinPage extends StatelessWidget {
  const PinPage(
      {super.key,
      this.title,
      this.subTitle,
      this.onCompleted,
      this.canGoBack = false});

  final String? title;
  final String? subTitle;
  final Function(String pin)? onCompleted;
  final bool canGoBack;

  @override
  Widget build(BuildContext context) {
    final TextEditingController pinText = TextEditingController();
    return PopScope(
      canPop: canGoBack,
      child: CustomScaffold(
        appBar: canGoBack ? const CustomAppBar(title: '') : null,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceh(65),
            Text(
              title ?? '',
              style: TextStyles.heading(),
              textAlign: TextAlign.left,
            ),
            spaceh(10),
            Text(
              subTitle ?? '',
              style: TextStyles.subHeading(),
            ),
            spaceh(30),
            PinContainer(
              controller: pinText,
              onCompleted: (pin) {
                onCompleted?.call(pin);
                pinText.clear();
              },
            ),
            spaceh(88),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: CustomNumberPad(
                expand: false,
                rowSpacing: 25.h,
                onPressed: (modItem) {
                  pinText.text += modItem.value ?? '';
                },
              ),
            ),
          ],
        ).defPadX,
      ),
    );
  }
}

class PinContainer extends StatelessWidget {
  const PinContainer(
      {super.key,
      this.pinLenght = 6,
      required this.controller,
      this.onCompleted});

  final int pinLenght;
  final TextEditingController controller;
  final Function(String pin)? onCompleted;

  @override
  Widget build(BuildContext context) {
    // controller.clear();
    logger(controller.text, 'Controllee rest');
    final defaultPinTheme = PinTheme(
      height: 12.w,
      width: 12.w,
      decoration: BoxDecoration(
        color: AppColors.color.textLight,
        shape: BoxShape.circle,
      ),
    );
    final submittedPinTheme = defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration
            ?.copyWith(color: AppColors.color.primary));

    return Container(
      // height: AppConstatnts.buttonHeight.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.color.grey400,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Pinput(
        defaultPinTheme: defaultPinTheme,
        submittedPinTheme: submittedPinTheme,
        length: 6,
        separatorBuilder: (index) {
          return spacew(15);
        },
        obscureText: true,
        obscuringWidget: const SizedBox.shrink(),
        readOnly: true,
        cursor: const SizedBox.shrink(),
        controller: controller,
        onCompleted: (value) {
          controller.clear();
          onCompleted?.call(value);
          logger(controller.text, 'Controllee rest');
        },
      ),
    );
  }
}
