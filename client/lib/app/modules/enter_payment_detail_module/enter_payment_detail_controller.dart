import 'package:client/app/components/quoted_tx_item.dart';
import 'package:client/app/data/models/pfi_offering_model/pfi_offering_model.dart';
import 'package:client/app/data/providers/pfi_providers.dart';
import 'package:client/app/modules/confirm_transaction_module/confirm_transaction_controller.dart';
import 'package:client/app/modules/enter_pfi_send_amount_module/enter_pfi_send_amount_controller.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_binding.dart';
import 'package:client/global_exports.dart';

class EnterPaymentDetailController extends GetxController {
  final paymentDetails = <String, dynamic>{}.obs;
  final offering = sendByPfiController.selecetedOffering.value;
  // final enterPfiSendAmountController = Get.put(EnterPaymentDetailController());
  // final enterPfiSendAmountController = Get.find<EnterPfiSendAmountController>();

  final enteramountkey = GlobalKey<FormState>();

  final selectedMethods = 0.obs;

  List<String> get paymentMethods {
    final method = (offering.data?.payin?.methods ?? [])
        .map((e) => (e.kind ?? '').replaceAll('_', ' ').capitalize ?? '')
        .toList();
    return method;
  }

  MethodsModel get payintMethod {
    final method =
        (offering.data?.payout?.methods ?? [])[selectedMethods.value];
    return method;
  }

  List<Widget> get getpayoutDetails {
    final method = paymentDetails.values.map(
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
        (offering.data?.payin?.methods ?? [])[selectedMethods.value]
            .requiredPaymentDetails
            ?.properties;

    detailsList?.entries.forEach((element) {
      paymentDetails[element.key] = {
        'controller': TextEditingController(),
        'details': element.value
      };
    });
  }

  handleProceed() async {
    if (!enteramountkey.currentState!.validate()) {
      return;
    }
    requestQuote();
  }

  changePayoutMethod(int val) {
    selectedMethods(val);
    setpayoutDetails();
  }

  requestQuote() async {
    final controller = Get.find<EnterPfiSendAmountController>();

    showLoading();
    final payoutDetails = controller.details.map((key, value) =>
        MapEntry(key, (value['controller'] as TextEditingController).text));

    final payinDetails = paymentDetails.map((key, value) =>
        MapEntry(key, (value['controller'] as TextEditingController).text));
    final resp = await PfiProvider.requestQuote(
      amount: (double.tryParse(controller.amount.text) ?? 0).toString(),
      offeringId: offering.metadata?.id ?? "",
      payinDetails: payinDetails,
      payoutDetails: payoutDetails,
      payinKind: (offering.data?.payin?.methods ?? []).first.kind ?? "",
      payouKind: controller.payoutMethod.kind ?? "",
      pfiDid: offering.metadata?.from ?? '',
    );

    showLoading(show: false);
    if (!resp.isOk) {
      AppNotifications.showModal(
          title: 'An Error occured',
          subTitle: 'An error occured placing a quote, please tru again later');
    }

    final quote = resp.data;
    if (quote == null) {
      AppNotifications.snackbar(message: 'An Error occured getting quote');
      return;
    }

    Nav.toNamed<ConfirmTransactionArgs>(
      RoutePaths.confirmTransaction,
      arguments: ConfirmTransactionArgs(
        onProceed: () => placeOrder(
            offering.getPfidetails?.uri ?? '',
            quote.metadata?.id ?? "",
            quote.privateData?.payin?.paymentDetails ?? {},
            amount: double.tryParse(quote.data?.payin?.amount ?? '') ?? 0),
        onCancel: () => closeOrder(
            offering.getPfidetails?.uri ?? '', quote.metadata?.id ?? ""),
        amount:
            '${offering.data?.payout?.currencyCode} ${controller.theyGet.text}',
        title: 'Recipient will recieve',
        transactionData: [
          ...controller.details.values.map((e) {
            final controller = e['controller'] as TextEditingController;
            final details = e['details'] as AddressModel;
            return KeyValueModel(
                itemKey: (details.title ?? "").capitalizeFirst ?? "",
                value: controller.text);
          }),
          KeyValueModel(
              itemKey: 'Currency',
              value: '${offering.data?.payout?.currencyCode}'),
          KeyValueModel(
              itemKey: 'Provider', value: offering.getPfidetails?.name),
          KeyValueModel(
              itemKey: 'Description', value: offering.data?.description ?? ''),
          KeyValueModel(
              itemKey: 'Extimated Time',
              value: '${controller.payoutMethod.estimatedSettlementTime} sec'),
        ],
        moreData: [
          KeyValueModel(
              itemKey: 'You Send',
              value:
                  '${offering.data?.payin?.currencyCode} ${controller.amount.text}'),
          KeyValueModel(itemKey: 'Sender', value: 'You'),
          ...paymentDetails.values.map((e) {
            final controller = e['controller'] as TextEditingController;
            final details = e['details'] as AddressModel;
            return KeyValueModel(
                itemKey: (details.title ?? "").capitalizeFirst ?? "",
                value: controller.text);
          }),
        ],
      ),
    );
  }
}
