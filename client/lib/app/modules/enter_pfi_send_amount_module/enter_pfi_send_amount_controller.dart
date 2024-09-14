import 'package:client/app/data/models/pfi_offering_model/pfi_offering_model.dart';
import 'package:client/app/modules/enter_payment_detail_module/enter_payment_detail_controller.dart';
import 'package:client/app/modules/enter_payment_detail_module/enter_payment_detail_page.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_binding.dart';
import 'package:client/global_exports.dart';

class EnterPfiSendAmountController extends GetxController {
  TextEditingController amount = TextEditingController(text: '0');
  TextEditingController theyGet = TextEditingController();

  final transKey = GlobalKey<FormState>();

  final enterPaymentDetailController = Get.put(EnterPaymentDetailController());

  final offering = sendByPfiController.selecetedOffering.value;

  final selectedMethods = 0.obs;

  final details = <String, dynamic>{}.obs;

  List<String> get payoutMethods {
    final method = (offering.data?.payout?.methods ?? [])
        .map((e) => (e.kind ?? '').replaceAll('_', ' ').capitalize ?? '')
        .toList();
    return method;
  }

  MethodsModel get payoutMethod {
    final method =
        (offering.data?.payout?.methods ?? [])[selectedMethods.value];
    return method;
  }

  List<Widget> get getpayoutDetails {
    final method = details.values.map(
      (e) {
        final controller = e['controller'] as TextEditingController;
        final details = e['details'] as AddressModel;
        return Column(
          children: [
            CustomTextFormField(
              controller: controller,
              hintText: details.description,
              labelText: details.title,
              validator: Validator.validateFieldNotEmpty,
            ),
            spaceh(20)
          ],
        );
      },
    ).toList();
    return method;
  }

  void setpayoutDetails() {
    final detailsList =
        (offering.data?.payout?.methods ?? [])[selectedMethods.value]
            .requiredPaymentDetails
            ?.properties;

    detailsList?.entries.forEach((element) {
      details[element.key] = {
        'controller': TextEditingController(),
        'details': element.value
      };
    });

    enterPaymentDetailController.setpayoutDetails();
  }

  changePayoutMethod(int val) {
    selectedMethods(val);
    setpayoutDetails();
  }

  calculate() {
    final amountD = double.tryParse(amount.text) ?? 0;
    theyGet.text = (amountD *
            (double.tryParse(offering.data?.payoutUnitsPerPayinUnit ?? "") ??
                0))
        .toString();
  }

  handleProceed() async {
    if (!transKey.currentState!.validate()) {
      return;
    }

    if (enterPaymentDetailController.paymentDetails.isEmpty) {
      enterPaymentDetailController.requestQuote();
      return;
    }
    Get.to(() => const EnterPaymentDetailPage());
    // Nav.to(const EnterPaymentDetailPage());
  }
}
