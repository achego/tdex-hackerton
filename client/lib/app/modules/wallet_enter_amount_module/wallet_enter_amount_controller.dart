import 'package:client/app/components/quoted_tx_item.dart';
import 'package:client/app/data/models/pfi_offering_model/pfi_offering_model.dart';
import 'package:client/app/data/providers/pfi_providers.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/app/modules/confirm_transaction_module/confirm_transaction_controller.dart';
import 'package:client/app/modules/send_from_wallet_module/send_from_wallet_controller.dart';
import 'package:client/global_exports.dart';

class WalletEnterAmountController extends GetxController {
  TextEditingController amount = TextEditingController(text: '0');
  TextEditingController theyGet = TextEditingController();

  final walletenterKey = GlobalKey<FormState>();
  final sfwController = Get.find<SendFromWalletController>();

  double get rate {
    final currRate = appController.currencyRates.where((element) =>
        element.symbol?.toLowerCase() ==
        sfwController.selectedCurrency?.code.toLowerCase());

    return currRate.first.rate ?? 0.0;
  }

  calculate() {
    final amountD = double.tryParse(amount.text) ?? 0;
    final newAmount = amountD * rate;
    // final fee = getAppFee(newAmount);
    theyGet.text = (newAmount).toStringAsFixed(2);
  }

  handleProceed() async {
    if (!walletenterKey.currentState!.validate()) {
      return;
    }
    if ((double.tryParse(appController.selectedBalance.value.balance ?? "") ??
            0) <
        (double.tryParse(amount.text) ?? 0)) {
      AppNotifications.snackbar(
          message:
              'You dont have sufficient balance on your ${appController.selectedBalance.value.currency?.toUpperCase()} Account');
      return;
    }
    requestQuote();
  }

  requestQuote() async {
    final controller = Get.find<SendFromWalletController>();

    final requiresVerifcation =
        (controller.offering?.data?.requiredClaims?.id ?? "").isNotEmpty;

    if (requiresVerifcation) {
      final hasCredentials = appController.userCredentials
          .where((cred) => cred.issuer == controller.offering?.metadata?.from)
          .isNotEmpty;
      if (!hasCredentials) {
        handleKyc();
        return;
      }

      showLoading();
      final payoutDetails = controller.details.map((key, value) =>
          MapEntry(key, (value['controller'] as TextEditingController).text));

      final payinDetails = (controller.offering?.data?.payin?.methods ?? [])
              .first
              .requiredPaymentDetails
              ?.properties
              ?.map((key, value) => MapEntry(key, 'Wallet')) ??
          {};
      final resp = await PfiProvider.requestQuote(
        amount: (double.tryParse(amount.text) ?? 0).toString(),
        offeringId: controller.offering?.metadata?.id ?? "",
        payinDetails: payinDetails,
        payoutDetails: payoutDetails,
        payinKind:
            (controller.offering?.data?.payin?.methods ?? []).first.kind ?? "",
        payouKind: controller.payoutMethod.kind ?? "",
        pfiDid: controller.offering?.metadata?.from ?? '',
      );

      showLoading(show: false);
      if (!resp.isOk) {
        AppNotifications.showModal(
            title: 'An Error occured',
            subTitle:
                'An error occured placing a quote, please tru again later');
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
              controller.offering?.getPfidetails?.uri ?? '',
              quote.metadata?.id ?? "",
              quote.privateData?.payin?.paymentDetails ?? {},
              amount: double.tryParse(amount.text) ?? 0),
          onCancel: () => closeOrder(
              controller.offering?.getPfidetails?.uri ?? '',
              quote.metadata?.id ?? ""),
          amount:
              '${controller.offering?.data?.payout?.currencyCode} ${theyGet.text}',
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
                value: '${controller.offering?.data?.payout?.currencyCode}'),
            KeyValueModel(
                itemKey: 'Provider',
                value: controller.offering?.getPfidetails?.name),
            KeyValueModel(
                itemKey: 'Description',
                value: controller.offering?.data?.description ?? ''),
            KeyValueModel(
                itemKey: 'Extimated Time',
                value:
                    '${controller.payoutMethod.estimatedSettlementTime} sec'),
          ],
          moreData: [
            KeyValueModel(
                itemKey: 'You Send',
                value:
                    '${appController.selectedBalance.value.currency?.toUpperCase()} ${amount.text}'),
            KeyValueModel(
                itemKey: 'Fee',
                value:
                    '${appController.selectedBalance.value.currency?.toUpperCase()} ${(1.5 / 100) * (double.tryParse(amount.text) ?? 0)}'),
            KeyValueModel(itemKey: 'Sender', value: 'You'),
            KeyValueModel(itemKey: 'Type', value: 'Wallet'),
          ],
        ),
      );
    }
  }

  handleKyc() async {
    final controller = Get.find<SendFromWalletController>();

    AppNotifications.showModal(
        title: 'Verification Needed',
        onPressed: saveKycDetails,
        subTitle:
            '${controller.offering?.getPfidetails?.name} Needs you to complete kyc process to be able to use this service',
        btnTitle: 'Perform kyc with my details',
        footer: Column(
          children: [
            spaceh(15),
            CustomButton(
              onPressed: () {
                Nav.back();
              },
              title: 'Cancel',
              backgroundColor: AppColors.color.error,
              textStyle: (currentStyle) =>
                  currentStyle.copyWith(color: AppColors.color.white),
            )
          ],
        ));
  }

  saveKycDetails() async {
    final controller = Get.find<SendFromWalletController>();

    Nav.back();
    final verificationType = controller
            .offering
            ?.data
            ?.requiredClaims
            ?.inputDescriptors
            ?.first
            .constraints
            ?.fields
            ?.first
            .filter
            ?.constI ??
        '';
    showLoading();
    final resp = await UserProvider.saveCredentials(
        controller.offering?.metadata?.from ?? "",
        type: verificationType);
    await appController.updateCredentials();
    // await Future.delayed(300.milliseconds);
    showLoading(show: false);
    if (!resp.isOk) {
      AppNotifications.snackbar(
          message: 'An error occured saving KCC please try again later',
          duration: 5.seconds);
      return;
    }
    AppNotifications.snackbar(
        message: 'KCC was successfull proceed to continue payment',
        duration: 5.seconds,
        type: NotificationType.success);
  }
}
