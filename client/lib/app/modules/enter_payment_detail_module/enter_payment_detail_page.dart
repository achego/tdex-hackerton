import 'package:client/app/components/custom_switcher.dart';
import 'package:client/global_exports.dart';

import 'enter_payment_detail_controller.dart';

class EnterPaymentDetailPage extends StatefulWidget {
  const EnterPaymentDetailPage({super.key});

  @override
  State<EnterPaymentDetailPage> createState() => _EnterPaymentDetailPageState();
}

class _EnterPaymentDetailPageState extends State<EnterPaymentDetailPage> {
  final controller = Get.find<EnterPaymentDetailController>();
  @override
  void initState() {
    super.initState();
    _setPys();
  }

  _setPys() async {
    await appWait(700);
    controller.setpayoutDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomScaffold(
        appBar: const CustomAppBar(title: 'Enter Payment Details'),
        bottomNavigationBar: BottomNavContainer(
          child: CustomButton(
            onPressed: controller.handleProceed,
            title: 'Request Quote',
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.enteramountkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spaceh(10),
                Text(
                  'Payment Methods',
                  style: TextStyles.base(fontSizeDiff: 5),
                ),
                spaceh(10),
                CustomSwitcher(
                  tabs: controller.paymentMethods,
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
