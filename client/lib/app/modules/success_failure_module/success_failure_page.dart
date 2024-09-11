import 'package:client/global_exports.dart';

class SuccessFailurePage extends StatelessWidget {
  const SuccessFailurePage({
    super.key,
    this.title,
    this.subTitle,
    required this.onActionPressed,
    this.actionButtonText,
  });

  final String? title;
  final String? subTitle;
  final String? actionButtonText;
  final VoidCallback onActionPressed;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bottomNavigationBar: BottomNavContainer(
        child: CustomButton(
          title: actionButtonText ?? 'Continue',
          onPressed: () {
            onActionPressed.call();
          },
        ),
      ),
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          Text(
            title ?? '',
            style: TextStyles.heading(),
            textAlign: TextAlign.center,
          ),
          spaceh(15),
          Text(
            subTitle ?? "",
            style: TextStyles.subHeading(),
            textAlign: TextAlign.center,
          ),
          spaceh(80),
        ],
      ).defPadX,
    );
  }
}
