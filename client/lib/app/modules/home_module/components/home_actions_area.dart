import 'package:client/app/components/balance_visibility_toogle.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/app/modules/features/donation/services/donate_service.dart.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_controller.dart';
import 'package:client/app/modules/transactions_module/transactions_controller.dart';
import 'package:client/global_exports.dart';

import 'home_top_bar.dart';

class HomeActionArea extends StatefulWidget {
  const HomeActionArea({
    super.key,
  });

  @override
  State<HomeActionArea> createState() => _HomeActionAreaState();
}

class _HomeActionAreaState extends State<HomeActionArea> {
  @override
  void initState() {
    super.initState();
    appController.updateUser();
    appController.updateUserBalances();
    appController.updateCredentials();
    transactionsController.getTransactions();
    donateService.getDonationsRequest();
    Get.put(SendByPfiController()).getOfferings();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
          border: Border(
              bottom: BorderSide(color: AppColors.color.border, width: 3))),
      child: Obx(
        () => Column(
          children: [
            const HomeTopBar(),
            GestureDetector(
                onTap: () {
                  appController.toogleBalanceMode();
                },
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Available Balance',
                          style: TextStyles.base()
                              .copyWith(color: AppColors.color.textLight),
                        ),
                        BalanceVisibilityToogle(
                          padding: EdgeInsets.all(10.w),
                        ),
                      ],
                    ),
                    MoneyAndCurrencyText(
                      amount: double.tryParse(
                              appController.selectedBalance.value.balance ??
                                  "") ??
                          0,
                      obscureAmount: !appController.isBalanceShown.value,
                      style: TextStyles.heading()
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 30),
                    ),
                  ],
                )),
            spaceh(15),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildActionButton(
                  'Deposit',
                  iconPath: AppIconSvgs.receive,
                  onPressed: () {
                    AppNotifications.showModal(
                        title: 'Request Demo funds',
                        subTitle:
                            'Demo funds of \$100 would be added to your dollar account for testing',
                        btnTitle: 'Give me funds 🙏',
                        onPressed: sendFunds);
                  },
                ),
                spacew(10),
                _buildActionButton(
                  'Send',
                  iconPath: AppIconSvgs.send,
                  onPressed: () {
                    Nav.toNamed(RoutePaths.sendMethod);
                  },
                ),
              ],
            ),
            spaceh(20),
          ],
        ),
      ),
    );
  }

  _buildActionButton(
    String text, {
    String? iconPath,
    VoidCallback? onPressed,
  }) {
    return CustomGestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 140.w,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.color.border),
            borderRadius: BorderRadius.circular(100.sp)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (iconPath != null) ...[
              rectangle(24, 28, child: svgAsset(iconPath)),
              spacew(10),
            ],
            Text(
              text,
              style: TextStyles.subHeading().copyWith(
                color: AppColors.color.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

void sendFunds() async {
  Get.back();
  showLoading();
  final resp = await UserProvider.addfunds();
  showLoading(show: false);
  if (!resp.isOk) {
    AppNotifications.snackbar(message: 'An error occured try again later');
    return;
  }
  appController.updateUserBalances();
}
