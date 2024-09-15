import 'package:client/app/data/models/available_currency_model/available_currency_model.dart';
import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/global_exports.dart';

class AddNewCurrencyController extends GetxController {
  final selectedCurrency = const AvailableCurrencyModel().obs;

  handleAdd() async {
    if (selectedCurrency.value.symbol == null) {
      AppNotifications.snackbar(
          message: 'Please select a currency to continue');
      return;
    }
    showLoading();
    final resp = await UserProvider.addCurrency(
        currency: selectedCurrency.value.symbol ?? "");
    showLoading(show: false);
    if (!resp.isOk) {
      AppNotifications.snackbar(message: 'An Error occured add curreny');
      return;
    }

    await AppNotifications.snackbar(
        message:
            'Successfully added ${selectedCurrency.value.title} to your currencies',
        type: NotificationType.success);
    Nav.offAllNamed(RoutePaths.dashboard);
  }
}
