import 'package:client/app/data/local/local_storage.dart';
import 'package:client/app/data/services/api_client/api_client.dart';
import 'package:client/app/data/services/api_client/custom_response.dart';
import 'package:client/app/data/services/api_client/enums.dart';
import 'package:client/app/data/services/api_client/network_client.dart';
import 'package:client/global_exports.dart';

final _pfiClient = NetworkClient();

class PfiProvider {
  static Future<CustomResponse> getAvailablePfiOfferings({
    String? email,
    String? phone,
    String? userName,
  }) async {
    final resp = await _pfiClient.request(
        path: 'get-offerings',
        method: MethodType.get,
        headers: {
          NetworkHeader.authorization: 'Bearer ${localStorage.auth.token}'
        });
    return resp;
  }
}
