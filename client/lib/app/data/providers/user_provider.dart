import 'package:client/app/data/models/credential_model/credential_model.dart';
import 'package:client/app/data/models/transaction_model/transaction_model.dart';
import 'package:client/app/data/services/api_client/aaexp.clients.dart';
import 'package:client/global_exports.dart';

final _userClient = NetworkClient();

class UserProvider {
  static Future<
      CustomResponse<
          ({
            List<TransactionModel>? transactions,
            int? count,
            int? totalPages,
            int? currentPage,
            int? pageSize,
            bool? lastPage,
          })>> getTransactions(
      {int? pageSize, int? page, TransactionType? type}) async {
    final resp = await _userClient.request(
        path: 'transaction',
        method: MethodType.post,
        payload: {
          "type": type?.name,
          "page_size": pageSize,
          "page": page
        },
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });
    final data = resp.data;
    final transactions = (data['transactions'] as List<dynamic>)
        .map((trans) => TransactionModel.fromJson(trans))
        .toList();
    return resp.copyWith(data: (
      count: data['count'],
      currentPage: data['current_page'],
      lastPage: data['last_page'],
      pageSize: data['page_size'],
      totalPages: data['total_pages'],
      transactions: transactions
    ));
  }

  static Future<CustomResponse> saveCredentials(String pfiDid,
      {String type = 'KnownCustomerCredential'}) async {
    final resp = await _userClient.request(
        path: 'user/save-credential',
        payload: {"issuer": pfiDid, "type": type},
        method: MethodType.post,
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });
    return resp;
  }

  static Future<CustomResponse<List<CredentialModel>>> getCredentials() async {
    final resp = _userClient.request<List<CredentialModel>, List<dynamic>>(
        path: 'user/credential',
        method: MethodType.get,
        fromJson: (json) =>
            json.map((e) => CredentialModel.fromJson(e)).toList(),
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });
    return resp;
  }
}
