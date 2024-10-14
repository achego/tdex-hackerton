import 'package:client/app/data/local/local_storage.dart';
import 'package:client/app/data/models/user_model/user_model.dart';
import 'package:client/app/data/services/api_client/api_client.dart';
import 'package:client/app/data/services/api_client/custom_response.dart';
import 'package:client/app/data/services/api_client/enums.dart';
import 'package:client/app/data/services/api_client/network_client.dart';

final _accountClient = NetworkClient();

class AccountProvider {
  static Future<CustomResponse<UserModel>> getUserFromUsername(
      {required String username}) async {
    final resp = await _accountClient.request(
        path: 'user',
        method: MethodType.get,
        queryParameters: {'username': username},
        fromJson: UserModel.fromJson,
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse> sendMoneyToUsername(
      {required String username, required double amount}) async {
    final resp = await _accountClient.request(
        path: 'user/send',
        payload: {"username": username, "amount": amount},
        method: MethodType.post,
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }
}
