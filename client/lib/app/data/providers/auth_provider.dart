import 'package:client/app/data/local/local_storage.dart';
import 'package:client/app/data/models/balance_model/balance_model.dart';
import 'package:client/app/data/models/user_model/user_model.dart';
import 'package:client/app/data/services/api_client/api_client.dart';
import 'package:client/app/data/services/api_client/custom_response.dart';
import 'package:client/app/data/services/api_client/enums.dart';
import 'package:client/app/data/services/api_client/network_client.dart';
import 'package:client/core/utils/logger.dart';

final _authClient = NetworkClient();

class AuthProvider {
  static Future<CustomResponse> verifyUniquAvailable({
    String? email,
    String? phone,
    String? userName,
  }) async {
    final resp = await _authClient.request(
      path: 'verify-unique',
      method: MethodType.post,
      payload: {
        'email': email,
        "user_name": userName,
        "phone": phone,
      },
    );
    return resp;
  }

  static Future<CustomResponse<Map<String, dynamic>>> signUp({
    required String fullName,
    required String userName,
    required String email,
    required String phone,
    required String password,
    required String country,
  }) async {
    final resp =
        await _authClient.request<Map<String, dynamic>, Map<String, dynamic>>(
      path: 'auth/sign-up',
      method: MethodType.post,
      payload: {
        "country": country,
        "full_name": fullName,
        "user_name": userName,
        "email": email,
        "phone": phone,
        "password": password,
      },
    );
    return resp;
  }

  static Future<CustomResponse<UserModel>> getMe({String? token}) async {
    final resp = await _authClient.request<UserModel, Map<String, dynamic>>(
        path: 'user/me',
        method: MethodType.get,
        fromJson: UserModel.fromJson,
        headers: {
          NetworkHeader.authorization:
              'Bearer ${token ?? localStorage.auth.token}'
        });
    logger(resp.toJson(), 'The Resp oo');
    return resp;
  }

  static Future<CustomResponse<List<BalanceModel>>> getAllBalance(
      {String? token}) async {
    final resp = await _authClient.request<List<BalanceModel>, List<dynamic>>(
        path: 'user/balances',
        method: MethodType.get,
        fromJson: (json) {
          return json.map((e) => BalanceModel.fromJson(e)).toList();
        },
        headers: {
          NetworkHeader.authorization:
              'Bearer ${token ?? localStorage.auth.token}'
        });
    return resp;
  }

  static Future<CustomResponse<String>> login({
    required String email,
    required String password,
  }) async {
    final resp = await _authClient.request<String, Map<String, dynamic>>(
        path: 'auth/login',
        method: MethodType.post,
        dataPath: (response) => response['data'],
        fromJson: (json) => json['token'],
        payload: {"email": email, "password": password},
        headers: {NetworkHeader.authorization: localStorage.auth.token});
    return resp;
  }

  static Future<CustomResponse> setUpPin({
    required int pin,
  }) async {
    final resp = await _authClient.request(
        path: 'auth/create-pin',
        method: MethodType.post,
        dataPath: (response) => response['data'],
        payload: {
          "pin": pin
        },
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });
    return resp;
  }

  static Future<CustomResponse> deleteAccount() async {
    final resp = await _authClient.request(
        path: 'auth/delete-account',
        method: MethodType.post,
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });
    return resp;
  }
}
