import 'package:client/app/components/custom_switcher.dart';
import 'package:client/app/modules/enter_pfi_send_amount_module/enter_pfi_send_amount_controller.dart';
import 'package:client/global_exports.dart';

class EnterPfiSendAmountPage extends StatefulWidget {
  const EnterPfiSendAmountPage({super.key});

  @override
  State<EnterPfiSendAmountPage> createState() => _EnterPfiSendAmountPageState();
}

class _EnterPfiSendAmountPageState extends State<EnterPfiSendAmountPage> {
  final controller = Get.put(EnterPfiSendAmountController());
  @override
  void initState() {
    super.initState();
    controller.setpayoutDetails();
    controller.calculate();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomScaffold(
        appBar: const CustomAppBar(title: 'Enter Transaction Details'),
        bottomNavigationBar: BottomNavContainer(
          child: CustomButton(
            onPressed: controller.handleProceed,
            title:
                controller.enterPaymentDetailController.paymentDetails.isEmpty
                    ? 'Request Quote'
                    : 'Proceed',
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.transKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                        color: AppColors.color.border,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      'Rate: ${controller.offering.data?.payoutUnitsPerPayinUnit} ${controller.offering.data?.payin?.currencyCode} to 1 ${controller.offering.data?.payout?.currencyCode}',
                      style: TextStyles.base()
                          .copyWith(color: AppColors.color.primary),
                    ),
                  ),
                ),
                spaceh(20),
                CustomTextFormField(
                  hintText: 'Enter Amount',
                  labelText: 'Amount to send',
                  controller: controller.amount,
                  onChanged: (value) {
                    controller.calculate();
                  },
                  keyboardType: TextInputType.number,
                  leadingIcon: Text(
                    '${controller.offering.data?.payin?.currencyCode ?? ''} ',
                    style: TextStyles.base()
                        .copyWith(color: AppColors.color.primary),
                  ),
                  validator: (value) => Validator.validateAmount(value),
                ),
                spaceh(25),
                CustomTextFormField(
                  hintText: '0',
                  readOnly: true,
                  controller: controller.theyGet,
                  labelText: 'They recieve',
                  leadingIcon: Text(
                    '${controller.offering.data?.payout?.currencyCode ?? ''} ',
                    style: TextStyles.base()
                        .copyWith(color: AppColors.color.primary),
                  ),
                  keyboardType: TextInputType.number,
                  validator: Validator.validateFieldNotEmpty,
                ),
                spaceh(24),
                Text(
                  'Payout Methods',
                  style: TextStyles.base(fontSizeDiff: 5),
                ),
                spaceh(10),
                CustomSwitcher(
                  tabs: controller.payoutMethods,
                  activeIndex: controller.selectedMethods.value,
                  onChanged: (value) {
                    controller.changePayoutMethod(value);
                  },
                ),
                spaceh(25),
                ...controller.getpayoutDetails,
                spaceh(60),
              ],
            ),
          ).defPadX,
        ),
      ),
    );
  }
}
