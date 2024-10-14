import 'package:client/app/components/debouncer.dart';
import 'package:client/app/data/models/user_model/user_model.dart';
import 'package:client/app/data/providers/account_provider.dart';
import 'package:client/app/modules/confirm_transaction_module/confirm_transaction_controller.dart';
import 'package:client/app/modules/transaction_success_module/transaction_success_controller.dart';
import 'package:client/global_exports.dart';

class SendToUsernameController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController amount = TextEditingController();

  final sendUsernameKey = GlobalKey<FormState>();

  final isGettingUsername = false.obs;

  UserModel? gottenUser;

  final debouncer = CustomDebouncer(milliseconds: 1200);

  getUser() async {
    debouncer.run(getUserByUsername);
  }

  getUserByUsername() async {
    logger(Validator.validateUserName(username.trimedText), 'Is Valid');
    if (Validator.validateUserName(username.trimedText) != null) {
      gottenUser = null;
      return;
    }

    isGettingUsername(true);

    final resp = await AccountProvider.getUserFromUsername(
        username: username.trimedText);
    isGettingUsername(false);
    !sendUsernameKey.currentState!.validate();

    if (!resp.isOk) {
      gottenUser = null;
      return;
    }

    gottenUser = resp.data;
  }

  handleContinue() {
    if (gottenUser == null) {
      AppNotifications.snackbar(
          message: 'Please select a valid user to continue');
      return;
    }
    if (gottenUser == null) {
      AppNotifications.snackbar(
          message: 'Please select a valid user to continue');
      return;
    }

    if (!sendUsernameKey.currentState!.validate()) {
      return;
    }

    final amountNum = double.tryParse(amount.trimedText);
    if (amountNum == null) {
      AppNotifications.snackbar(message: 'Plese enter a valid amount');
      return;
    }

    if ((double.tryParse(appController.selectedBalance.value.balance ?? '') ??
            0) <
        amountNum) {
      AppNotifications.snackbar(message: 'Sorry, you dont have enough balance');
      return;
    }

    Nav.toNamed<ConfirmTransactionArgs>(
      RoutePaths.confirmTransaction,
      arguments: ConfirmTransactionArgs(
          amount: amountNum.toString(),
          onProceed: sendMoneyToUser,
          providerLogo: '',
          // balBefore: appController.userBalannce.value.balance,
          // balAfter: appController.userBalannce.value.balance - amountNum,
          transactionData: [
            KeyValueModel(
                itemKey: 'Recipient', value: '@${gottenUser!.userName}'),
            KeyValueModel(itemKey: 'Provider', value: 'Panther'),
            KeyValueModel(itemKey: 'Fee', value: 'Free'),
          ]),
    );
  }

  sendMoneyToUser() async {
    showLoading();
    final resp = await AccountProvider.sendMoneyToUsername(
        username: username.trimedText, amount: double.parse(amount.trimedText));
    showLoading(show: false);

    if (!resp.isOk) {
      AppNotifications.showModal(subTitle: resp.message);
      // AppNotifications.snackbar(message: resp.message);
      return;
    }

    Nav.toNamed<TransactionSuccessArgs>(RoutePaths.transactionSuccess,
        arguments: TransactionSuccessArgs(
          title: 'Tranfer was successfull',
          subTitle:
              'You have successfully trannsfered NGN ${amount.trimedText} to @${username.trimedText}',
        ));
  }
}
