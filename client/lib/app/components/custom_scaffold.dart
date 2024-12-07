import 'package:client/global_exports.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.body,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.appBar,
  });
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final CustomAppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          spaceh(context.paddingTop),
          if (appBar != null)
            Align(alignment: Alignment.centerLeft, child: appBar!),
          if (body != null) Expanded(child: body!),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppConstatnts.defPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Nav.back(),
            child: square(40,
                padding: EdgeInsets.all(8.w),
                borderRadius: AppConstatnts.defBorderRadius,
                color: AppColors.color.grey400,
                child: svgAsset(AppIconSvgs.back)),
          ),
          if (title.isNotEmpty) ...[
            spaceh(10),
            Text(
              title,
              style: TextStyles.heading(),
            )
          ]
        ],
      ).defPadX,
    );
  }
}
