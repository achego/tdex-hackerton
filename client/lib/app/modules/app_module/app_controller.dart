import 'package:client/app/data/models/balance_model.dart';
import 'package:client/app/data/models/user_model/user_model.dart';
import 'package:client/app/modules/log_in_module/log_in_controller.dart';
import 'package:client/global_exports.dart';

class AppController extends GetxController {
  final user = const UserModel().obs;
  final userBalances = <BalanceModel>[].obs;
  final selectedBalance = BalanceModel.init().obs;
  // final userBalannces = BalanceModel.init().obs;

  final isBalanceShown = localStorage.isBalanceShown.obs;
  Future<void> toogleBalanceMode() async {
    isBalanceShown.toggle();
    await localStorage.setIsBalanceShown(isBalanceShown.value);
  }

  Future<UserModel?> updateUser({String? token}) async {
    final userResp = await AuthProvider.getMe(token: token);
    if (userResp.isOk && userResp.data != null) {
      logger(userResp.data, 'THE GOTTEN USER +++++++');
      user.value = userResp.data!;
      localStorage.setCurrentUser(userResp.data);
      return userResp.data;
    }
    if (userResp.data == null) {
      return null;
    }
    return null;
  }

  Future<List<BalanceModel>?> updateUserBalances({String? token}) async {
    final balanceresp = await AuthProvider.getAllBalance(token: token);
    if (balanceresp.isOk && balanceresp.data != null) {
      logger(balanceresp.data, 'Balance Gotten');
      userBalances.value = balanceresp.data!;
      // localStorage.setCurrentUser(balanceresp.data);
      return balanceresp.data;
    }
    if (balanceresp.data == null) {
      return null;
    }
    return null;
  }

  logOut({bool canPop = false}) async {
    if (canPop) {
      Nav.toNamed<LoginArguments>(RoutePaths.logIn,
          arguments: LoginArguments(
            canPop: true,
            message: 'Your session has expired Please login to continue',
          ));
      return;
    }
    await localStorage.setCurrentUser(null);
    await localStorage.auth.setToken('');
    Nav.offAllNamed(RoutePaths.logIn);
  }

  commingSoon() async {
    AppNotifications.snackbar(message: 'Comming soon');
    return;
  }
}
