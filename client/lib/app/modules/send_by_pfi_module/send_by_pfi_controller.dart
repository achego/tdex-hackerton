import 'package:client/app/data/models/pfi_offering_model/pfi_offering_model.dart';
import 'package:client/app/data/models/selected_pfis/selected_pfis_model.dart';
import 'package:client/app/data/providers/pfi_providers.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/app/modules/enter_pfi_send_amount_module/enter_pfi_send_amount_page.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_binding.dart';
import 'package:client/global_exports.dart';

class SendByPfiController extends GetxController {
  init() {
    from.clear();
    to.clear();
    amount.clear();
    selectedFrom = null;
    selectedto = null;
    matchingofferings.value = [];
    selecetedOffering.value = const PfiOfferingModel();
  }

  TextEditingController from = TextEditingController();
  TextEditingController to = TextEditingController();
  TextEditingController amount = TextEditingController();

  CurrencyModel? selectedFrom;
  CurrencyModel? selectedto;

  final sendPfiKey = GlobalKey<FormState>();

  final isGettingOfferings = false.obs;
  // final isLoading = false.obs;

  final offerings = <PfiOfferingModel>[].obs;
  final matchingofferings = <PfiOfferingModel>[].obs;
  final selectedPfis = <SelectedPfisModel>[].obs;

  final selecetedOffering = const PfiOfferingModel().obs;

  // TODO: Polling the pfis to get current prices

  List<CurrencyModel> get fromCurrencies {
    final fromCurr = offerings
        .map((element) =>
            CurrencyModel(code: element.data?.payin?.currencyCode ?? ''))
        .toList();
    final ids = fromCurr.map((e) => e.code).toSet();
    fromCurr.retainWhere((x) => ids.remove(x.code));
    return fromCurr;
  }

  List<CurrencyModel> get toCurrencires {
    return offerings
        .where((element) =>
            element.data?.payin?.currencyCode?.toLowerCase() ==
            selectedFrom?.code.toLowerCase())
        .toList()
        .map((e) => CurrencyModel(code: e.data?.payout?.currencyCode ?? ''))
        .toList();
  }

  // final showMatchingPfis = false.obs;

  handleProceed() {
    if (!sendPfiKey.currentState!.validate()) {
      return;
    }
    if (selecetedOffering.value.metadata?.from == null) {
      AppNotifications.snackbar(
          message: 'Plese select a matching PFI to continue');
      return;
    }

    final requiresVerifcation =
        (selecetedOffering.value.data?.requiredClaims?.id ?? "").isNotEmpty;

    if (requiresVerifcation) {
      final hasCredentials = appController.userCredentials
          .where(
              (cred) => cred.issuer == selecetedOffering.value.metadata?.from)
          .isNotEmpty;
      if (!hasCredentials) {
        handleKyc();
        return;
      }
      Nav.to(const EnterPfiSendAmountPage());
    } else {
      Nav.to(const EnterPfiSendAmountPage());
    }
  }

  handleKyc() async {
    AppNotifications.showModal(
        title: 'Verification Needed',
        onPressed: saveKycDetails,
        subTitle:
            '${selecetedOffering.value.getPfidetails?.name} Needs you to complete kyc process to be able to use this service',
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
    Nav.back();
    final verificationType = selecetedOffering
            .value
            .data
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
        selecetedOffering.value.metadata?.from ?? "",
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

  getOfferings() async {
    isGettingOfferings(true);
    final resp = await PfiProvider.getAvailablePfiOfferings();
    isGettingOfferings(false);
    if (!resp.isOk) {
      return;
    }
    logger(resp.data, 'The response datat', maxChars: 1000000);
    try {
      offerings.value = (resp.data['offerings'] as List<dynamic>)
          .map((e) => PfiOfferingModel.fromJson(e))
          .toList();
      selectedPfis.value = (resp.data['pfis'] as List<dynamic>)
          .map((e) => SelectedPfisModel.fromJson(e))
          .toList();
    } catch (e, s) {
      logException(e, s);
    }

    isGettingOfferings(false);
  }

  pickToCurrency() async {
    if (selectedFrom == null) {
      AppNotifications.snackbar(
          message: 'Please pick a send from currency to continue');
      return;
    }
    final selectedCurrency = await Get.bottomSheet<CurrencyModel>(
        SelectCurrencyModal(
          currencycodes: toCurrencires,
        ),
        elevation: 0);

    if (selectedCurrency != null) {
      to.text = selectedCurrency.code;
      selectedto = selectedCurrency;
    }

    if (selectedFrom != null && selectedto != null) {
      matchingofferings.value = offerings
          .where((element) =>
              element.data?.payin?.currencyCode?.toLowerCase() ==
                  selectedFrom?.code.toLowerCase() &&
              element.data?.payout?.currencyCode?.toLowerCase() ==
                  selectedto?.code.toLowerCase())
          .toList();
    }
  }

  pickFromCurrency() async {
    final selectedCurrency = await Get.bottomSheet<CurrencyModel>(
        SelectCurrencyModal(
          currencycodes: fromCurrencies,
        ),
        elevation: 0);

    if (selectedCurrency != null) {
      from.text = selectedCurrency.code;
      selectedFrom = selectedCurrency;

      to.clear();
      selectedto = null;
      matchingofferings.clear();
      selecetedOffering.value = const PfiOfferingModel();
    }

    if (selectedFrom != null && selectedto != null) {
      matchingofferings.value = offerings.where((element) {
        return element.data?.payin?.currencyCode?.toLowerCase() ==
                selectedFrom?.code.toLowerCase() &&
            element.data?.payout?.currencyCode?.toLowerCase() ==
                selectedto?.code.toLowerCase();
      }).toList();
    }
  }
}

class SelectCurrencyModal extends StatelessWidget {
  const SelectCurrencyModal({
    super.key,
    required this.currencycodes,
  });

  final List<CurrencyModel> currencycodes;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SendByPfiController>();
    return Obx(
      () => Container(
        // height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.color.grey400,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: controller.isGettingOfferings.value
            ? const SizedBox(
                height: 200,
                child: Center(
                  child: CupertinoActivityIndicator(),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  spaceh(10),
                  Align(
                      alignment: Alignment.center,
                      child: rectangle(60, 5, color: AppColors.color.border)),
                  spaceh(15),
                  Text(
                    'Select currency',
                    style: TextStyles.heading(),
                  ),
                  spaceh(20),
                  Flexible(
                      child: CustomCard(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ...currencycodes.map((code) => CustomGestureDetector(
                                onTap: () {
                                  Nav.back(result: code);
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      square(40,
                                          color: AppColors.color.border,
                                          borderRadius: 6),
                                      spacew(20),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            code.name.capitalizeFirst ?? "",
                                            style: TextStyles.base(),
                                          ),
                                          Text(
                                            code.code.toUpperCase(),
                                            style: TextStyles.base(
                                                primary: false,
                                                fontSizeDiff: 5),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )),
                  spaceh(20),
                ],
              ).defPadX,
      ),
    );
  }
}

class CurrencyModel {
  final String code;

  CurrencyModel({
    required this.code,
  });

  String get name => '';
  String get flagUrl => '';
}
