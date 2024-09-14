import 'package:client/app/data/models/pfi_offering_model/pfi_offering_model.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_controller.dart';
import 'package:client/global_exports.dart';

class SendFromWalletController extends GetxController {
  TextEditingController currency = TextEditingController();

  final sendWalletKey = GlobalKey<FormState>();

  final sendBytC = Get.find<SendByPfiController>();

  final details = <String, dynamic>{}.obs;

  CurrencyModel? selectedCurrency;

  final selectedMethods = 0.obs;

  List<Widget> get getpayoutDetails {
    // logger(details, 'Details');
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

  List<CurrencyModel> get currencies {
    final curr = sendBytC.offerings
        .map((e) => CurrencyModel(code: e.data?.payout?.currencyCode ?? ""))
        .toList();
    final ids = curr.map((e) => e.code).toSet();
    curr.retainWhere((x) => ids.remove(x.code));

    final ratesString =
        appController.currencyRates.map((element) => element.symbol);
    return curr
        .where((element) => ratesString.contains(element.code.toLowerCase()))
        .toList();
  }

  PfiOfferingModel? get offering {
    final matchedOffs = sendBytC.offerings.where((off) =>
        off.data?.payout?.currencyCode?.toLowerCase() ==
        currency.text.toLowerCase());

    return matchedOffs.isEmpty ? null : matchedOffs.first;
  }

  List<String> get payoutMethods {
    final method = (offering?.data?.payout?.methods ?? [])
        .map((e) => (e.kind ?? '').replaceAll('_', ' ').capitalize ?? '')
        .toList();
    return method;
  }

  pickCurrency() async {
    final selectedCurrecy = await Get.bottomSheet<CurrencyModel>(
        SelectCurrencyModal(
          currencycodes: currencies,
        ),
        elevation: 0);

    if (selectedCurrecy != null) {
      currency.text = selectedCurrecy.code;
      selectedCurrency = selectedCurrecy;
    }

    selectedMethods.refresh();
    setpayoutDetails();
  }

  void setpayoutDetails() {
    try {
      final detailsList =
          (offering?.data?.payout?.methods ?? [])[selectedMethods.value]
              .requiredPaymentDetails
              ?.properties;

      detailsList?.entries.forEach((element) {
        details[element.key] = {
          'controller': TextEditingController(),
          'details': element.value
        };
      });
    } catch (e) {}
  }

  changePayoutMethod(int val) {
    selectedMethods(val);
    setpayoutDetails();
  }
}
