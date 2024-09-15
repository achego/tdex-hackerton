import 'package:client/app/components/custom_cached_network_imge.dart';
import 'package:client/app/modules/add_new_currency_module/add_new_currency_controller.dart';
import 'package:client/global_exports.dart';

class AddNewCurrencyPage extends StatelessWidget {
  const AddNewCurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddNewCurrencyController());
    return Obx(
      () => CustomScaffold(
        appBar: const CustomAppBar(title: 'Add a new curreny'),
        bottomNavigationBar: BottomNavContainer(
          child: CustomButton(
            onPressed: controller.handleAdd,
            title: 'Add Currency',
          ),
        ),
        body: CustomSingleChildScroll(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            spaceh(20),
            ...appController.availableCurrencies.map((element) {
              final availableCurrencySymbol = appController.userBalances
                  .map((element) => element.currency?.toLowerCase());
              final isActive = availableCurrencySymbol
                  .contains(element.symbol?.toLowerCase());

              final isSelected =
                  controller.selectedCurrency.value.symbol == element.symbol;

              return CustomGestureDetector(
                onTap: () {
                  if (isActive) {
                    AppNotifications.snackbar(
                        message: 'You already have this currency');
                    return;
                  }
                  controller.selectedCurrency(element);
                },
                child: Opacity(
                  opacity: isActive ? 0.6 : 1,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: !isSelected
                                ? AppColors.color.border
                                : AppColors.color.primary),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        square(35,
                            child: CustomCachedImage(
                                imageUrl: element.imageUrl ?? '')),
                        spacew(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${element.title ?? ""} ',
                              style: TextStyles.base(fontSizeDiff: 2),
                            ),
                            Text(
                              element.symbol?.toUpperCase() ?? '',
                              style: TextStyles.base(
                                  fontSizeDiff: -2, primary: false),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ]).defPadX,
        ),
      ),
    );
  }
}
