import 'package:client/app/data/models/available_currency_model/available_currency_model.dart';
import 'package:client/app/data/models/credential_model/credential_model.dart';
import 'package:client/app/data/models/currency_rate_model/currency_rate_model.dart';
import 'package:client/app/data/models/pfi_rate_model/pfi_rate_model.dart';
import 'package:client/app/data/models/quoted_transaction_model/quoted_transaction_model.dart';
import 'package:client/app/data/models/transaction_model/transaction_model.dart';
import 'package:client/app/data/services/api_client/aaexp.clients.dart';
import 'package:client/app/modules/features/donation/models/donation/donation_model.dart';
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

  static Future<CustomResponse<List<QuotedTransactionModel>>>
      getQuotedTransaction() async {
    final resp = await _userClient
        .request<List<QuotedTransactionModel>, List<dynamic>>(
            path: 'user/get-exchanges',
            method: MethodType.get,
            fromJson: (json) {
              return json
                  .map((e) => QuotedTransactionModel.fromJson(e))
                  .toList();
            },
            headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse> closeQuote({
    required String pfiDid,
    required String exchangeId,
    required String reaso,
  }) async {
    final resp = await _userClient.request(
        path: 'user/close-quote',
        method: MethodType.post,
        payload: {
          "pfiDid": pfiDid,
          "exchange_id": exchangeId,
          "reason": reaso
        },
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse> addOrder({
    required String pfiDid,
    required String exchangeId,
    required String currency,
    required Map payin,
    required double amount,
    required int pin,
    required List<Map<String, dynamic>> transactions,
  }) async {
    final resp = await _userClient
        .request(path: 'user/place-order', method: MethodType.post, payload: {
      "pfiDid": pfiDid,
      "exchange_id": exchangeId,
      "payin": payin,
      "currency": currency,
      "amount": amount,
      "pin": pin,
      "transactions": transactions
    }, headers: {
      NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
    });

    return resp;
  }

  static Future<CustomResponse<List<CurrencyRateModel>>>
      getCurrencyRates() async {
    final resp = await _userClient
        .request<List<CurrencyRateModel>, List<dynamic>>(
            path: 'currency-rates',
            method: MethodType.get,
            fromJson: (json) =>
                json.map((e) => CurrencyRateModel.fromJson(e)).toList(),
            headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse<List<AvailableCurrencyModel>>>
      getAvailableCurrencies() async {
    final resp = await _userClient
        .request<List<AvailableCurrencyModel>, List<dynamic>>(
            path: 'available-currencies',
            method: MethodType.get,
            fromJson: (json) =>
                json.map((e) => AvailableCurrencyModel.fromJson(e)).toList(),
            headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse> addCurrency({required String currency}) async {
    final resp = await _userClient.request(
        path: 'user/add-currency',
        method: MethodType.post,
        payload: {
          'currency': currency
        },
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse<List<PfiRateModel>>> getPfiRatings() async {
    final resp = await _userClient.request<List<PfiRateModel>, List<dynamic>>(
        path: 'user/pfi-ratings',
        method: MethodType.get,
        fromJson: (json) => json.map((e) => PfiRateModel.fromJson(e)).toList(),
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse> ratePfi({
    required String pfiDid,
    required double rate,
    String? comment,
    required String quoteId,
  }) async {
    final resp = await _userClient.request(
        path: 'user/rate-pfi',
        method: MethodType.post,
        payload: {
          "pfi_did": pfiDid,
          "rate": rate,
          "quote_id": quoteId,
          "comment": comment
        },
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse> addfunds() async {
    final resp = await _userClient.request(
        path: 'user/add-funds',
        method: MethodType.get,
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse> swapCurrency({
    required String from,
    required String to,
    required double amount,
  }) async {
    final resp = await _userClient.request(
      path: 'user/swap-currency',
      method: MethodType.post,
      payload: {
        "from": from,
        "to": to,
        "amount": amount,
      },
      headers: {
        NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
      },
    );

    return resp;
  }

  static Future<CustomResponse> sendMoneyToUsername(
      {required String username, required double amount}) async {
    final resp = await _userClient.request(
        path: 'user/send',
        payload: {"username": username, "amount": amount},
        method: MethodType.post,
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });

    return resp;
  }

  static Future<CustomResponse> getUserFromUsername({
    required String username,
    required double amount,
  }) async {
    final resp = await _userClient.request(
      path: 'user/swap-currency',
      method: MethodType.post,
      payload: {
        // "from": from,
        // "to": to,
        "amount": amount,
      },
      headers: {
        NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
      },
    );

    return resp;
  }

  static Future<CustomResponse<List<DonationModel>>> getDontaions() async {
    final resp = await _userClient.request<List<DonationModel>, List<dynamic>>(
      path: 'donation/get-donations',
      method: MethodType.get,
      fromJson: (json) => json.map((e) => DonationModel.fromMap(e)).toList(),
      headers: {
        NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
      },
    );
    return resp;
  }
}
