import 'package:client/app/modules/wallet_enter_amount_module/wallet_enter_amount_controller.dart';
import 'package:client/global_exports.dart';

class WalletEnterAmountPage extends StatefulWidget {
  const WalletEnterAmountPage({super.key});

  @override
  State<WalletEnterAmountPage> createState() => _WalletEnterAmountPageState();
}

class _WalletEnterAmountPageState extends State<WalletEnterAmountPage> {
  final controller = Get.put(WalletEnterAmountController());
  @override
  void initState() {
    super.initState();
    controller.calculate();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'Enter Amount'),
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
              onPressed: controller.handleProceed,
              title: 'Proceed',
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: controller.walletenterKey,
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
                    'Rate: ${controller.rate} ${controller.sfwController.offering?.data?.payout?.currencyCode} to 1 ${appController.selectedBalance.value.currency?.toUpperCase()}',
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
                  '${appController.selectedBalance.value.currency?.toUpperCase()} ',
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
                  '${controller.sfwController.offering?.data?.payout?.currencyCode ?? ''} ',
                  style: TextStyles.base()
                      .copyWith(color: AppColors.color.primary),
                ),
                keyboardType: TextInputType.number,
                validator: Validator.validateFieldNotEmpty,
              ),
              spaceh(60),
            ],
          ),
        ).defPadX,
      ),
    );
  }
}
