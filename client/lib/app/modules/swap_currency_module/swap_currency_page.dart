import 'dart:math';
import 'package:client/app/components/custom_cached_network_imge.dart';
import 'package:client/app/data/models/balance_model/balance_model.dart';
import 'package:client/app/modules/swap_currency_module/swap_currency_controller.dart';
import 'package:client/global_exports.dart';

class SwapCurrencyPage extends StatelessWidget {
  const SwapCurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SwapCurrencyController());

    return CustomScaffold(
      appBar: const CustomAppBar(title: 'Swap Currency'),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomCard(
            backgroundColor: Colors.amber.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              'Note a service of of 1.5% would be charged as fee for this transaction',
              style: TextStyles.base().copyWith(color: Colors.amber),
            ),
          ).defPadX,
          spaceh(20),
          BottomNavContainer(
              child: CustomButton(
            onPressed: controller.handelSawap,
            title: 'Swap',
          )),
        ],
      ),
      body: Obx(
        () {
          final fromBal = controller.fromBalance.value;
          return Column(
            children: [
              spaceh(20),
              Stack(
                children: [
                  Column(
                    children: [
                      SwapItem(
                        title: 'From',
                        autofocus: true,
                        onChanged: (value) => controller.calculateRate(),
                        balance: fromBal,
                        controller: controller.fromController,
                        onTap: () => controller.selectBalance(),
                      ),
                      spaceh(10),
                      SwapItem(
                        title: 'To',
                        readOnly: true,
                        balance: controller.toBalance.value,
                        controller: controller.toController,
                        onTap: () => controller.selectBalance(isFrom: false),
                      ),
                    ],
                  )
                ],
              ),
              spaceh(20),
              CustomSeparatedListView2(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fee',
                        style: TextStyles.base(primary: false),
                      ),
                      Text(controller.getFee, style: TextStyles.base()),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'You Recieve',
                        style: TextStyles.base(primary: false),
                      ),
                      Text(controller.yourecieve, style: TextStyles.base()),
                    ],
                  ),
                )
              ])
            ],
          ).defPadX;
        },
      ),
    );
  }
}

class SwapItem extends StatelessWidget {
  const SwapItem({
    super.key,
    required this.title,
    this.balance,
    this.onTap,
    this.autofocus = false,
    this.readOnly = false,
    this.controller,
    this.onChanged,
  });

  final String title;
  final BalanceModel? balance;
  final VoidCallback? onTap;
  final Function(String value)? onChanged;
  final TextEditingController? controller;
  final bool autofocus;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.base(primary: false, fontSizeDiff: 2),
                ),
                spaceh(20),
                CustomGestureDetector(
                  onTap: onTap,
                  child: Row(
                    children: [
                      _renderBasedOnBalance(),
                      spacew(10),
                      SizedBox(
                        height: 13,
                        child: Transform.rotate(
                            angle: pi / 2,
                            child: svgAsset(AppIconSvgs.caratRight)),
                      )
                    ],
                  ),
                )
              ],
            ),
            spacew(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text.rich(
                    TextSpan(text: 'Balance: ', children: [
                      TextSpan(
                          text: balance?.balance != null
                              ? '${balance?.currency?.toUpperCase()}${balance?.balance}'
                              : '0',
                          style: TextStyle(color: AppColors.color.white))
                    ]),
                    style: TextStyles.base(primary: false),
                  ),
                  spaceh(20),
                  TextField(
                    onChanged: onChanged,
                    readOnly: readOnly,
                    autofocus: autofocus,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    cursorColor: AppColors.color.primary,
                    controller: controller,
                    style: TextStyles.heading().copyWith(),
                    decoration: const InputDecoration.collapsed(hintText: '0'),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _renderBasedOnBalance() {
    if (balance?.balance == null) {
      return Text(
        'Tap to select',
        style: TextStyles.base(fontSizeDiff: -2),
      );
    }
    return Row(
      children: [
        rectangle(
          30,
          20,
          child: CustomCachedImage(
            imageUrl: balance?.getAvailableCurrency?.imageUrl ?? '',
          ),
        ),
        spacew(5),
        Text(
          balance?.currency?.toUpperCase() ?? "",
          style: TextStyles.base(fontSizeDiff: 5),
        )
      ],
    );
  }
}
