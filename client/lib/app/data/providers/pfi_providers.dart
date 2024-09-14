import 'package:client/app/data/local/local_storage.dart';
import 'package:client/app/data/services/api_client/api_client.dart';
import 'package:client/app/data/services/api_client/custom_response.dart';
import 'package:client/app/data/services/api_client/enums.dart';
import 'package:client/app/data/services/api_client/network_client.dart';
import 'package:client/global_exports.dart';

final _pfiClient = NetworkClient();

class PfiProvider {
  static Future<CustomResponse> getAvailablePfiOfferings() async {
    final resp = await _pfiClient.request(
        path: 'get-offerings',
        method: MethodType.get,
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });
    return resp;
  }

  static Future<CustomResponse> requestQuote({
    required String pfiDid,
    required String offeringId,
    required String amount,
    required String payinKind,
    required Map<String, dynamic> payinDetails,
    required String payouKind,
    required Map<String, dynamic> payoutDetails,
  }) async {
    final resp = await _pfiClient
        .request(path: 'user/request-quote', method: MethodType.post, payload: {
      "pfiDid": pfiDid,
      "offeringId": offeringId,
      "amount": amount,
      "payin_kind": payinKind,
      "payin_details": payinDetails,
      "payout_kind": payouKind,
      "payout_details": payoutDetails,
    }, headers: {
      NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
    });
    return resp;
  }
}
