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
}
