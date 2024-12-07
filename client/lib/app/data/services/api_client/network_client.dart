// import 'dart:convert';

import 'dart:convert';

import 'package:client/core/utils/logger.dart';
import 'package:client/global_exports.dart';
import 'package:encrypt/encrypt.dart' as enc;
import 'aaexp.clients.dart';

class NetworkClient implements ApiClient {
  NetworkClient({this.baseUrl}) {
    _client = Dio(
      BaseOptions(
        baseUrl: baseUrl ?? AppStrings().apiBaseUrl,
        contentType: 'application/json',
        sendTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 20),
        validateStatus: (status) => status! <= 400,
      ),
    );
  }
  final String? baseUrl;

  late Dio _client;

  @override
  Future<CustomResponse<T>> request<T, M>({
    required String path,
    required MethodType method,
    Object? payload,
    bool ignoreMaintainance = false,
    Map<String, dynamic>? queryParameters,
    Map<NetworkHeader, String>? headers,
    T Function(M json)? fromJson,
    M Function(Map<String, dynamic> response)? dataPath,
  }) async {
    final connected = await ConnectivityService().isConnected;
    if (!connected) {
      final resp = CustomResponse<T>.fromError(error: SocketException);
      return resp;
    }
    logger(AppStrings().apiBaseUrl, '<<<<====base url======>>>');
    logger(
        'Path: $path ===>> PayLoad: $payload  ====>>> Params: $queryParameters ======>>> Methodd: $method',
        '<<<<====request to======>>>');
    try {
      final response = await _executeRequest(
        method: method,
        payload: payload,
        path: _cleanRoute(path),
        queryParameters: queryParameters,
        headers: headers?.map((key, value) => MapEntry(key.text, value)),
      );
      logger(response, 'raw response ==>> $path');

      final resp = _parseResponse<T, M>(
        response: response,
        fromJson: fromJson,
        dataPath: dataPath,
      );
      logger(resp.toJson(), path);
      return resp;
    } catch (error, trace) {
      logException(error, trace);
      final resp = CustomResponse<T>.fromError(error: error);
      logger(
          'Path: $path ===>> PayLoad: $payload  ====>>> Params: $queryParameters ====>>> Headers: $headers',
          '<<<<====Error for======>>>');
      return resp;
    }
  }

  Future<Response> _executeRequest({
    required String path,
    required MethodType method,
    Object? payload,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    switch (method) {
      case MethodType.get:
        return await _client.get(
          path,
          data: payload,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        );

      case MethodType.post:
        return await _client.post(
          path,
          data: payload,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        );

      case MethodType.delete:
        return await _client.delete(
          path,
          data: payload,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        );

      case MethodType.patch:
        return await _client.patch(
          path,
          data: payload,
          queryParameters: queryParameters,
        );

      case MethodType.put:
        return await _client.put(
          path,
          data: payload,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        );
    }
  }

  CustomResponse<T> _parseResponse<T, M>({
    required Response response,
    T Function(M json)? fromJson,
    M Function(Map<String, dynamic> json)? dataPath,
    bool decrypt = false,
  }) {
    dynamic decodedData = jsonDecode(_decryptData(response.data));

    if (![200, 201, 202].contains(response.statusCode)) {
      throw AppException(
          message: decodedData['message'] ?? "", data: decodedData);
    }
    // logger(decodedData['data'], '===');

    final path = dataPath?.call(decodedData) ?? decodedData['data'];
    // logger('PAsses Here', '3');
    // logger(fromJson?.call(path), 'FROM_JSON DATA');

    final resp = CustomResponse<T>(
      statusCode: response.statusCode,
      message: decodedData['message'] ?? "",
      data: fromJson?.call(path) ?? path,
      // customOkCondition: (decodedData['status'] ?? 'failed') == 'success',
    );

    return resp;
  }

  String _cleanRoute(String route) {
    if (route.startsWith('/')) {
      return route;
    } else {
      return '/$route';
    }
  }
}

String _decryptData(String encryptedData) {
  try {
    final aesKey = enc.Key.fromUtf8('68fd9ae3d57c0cfcf76b0e8f3ff68d76');
    final ivBytes = enc.IV.fromUtf8('a88f1a91db32c4f7');

    final encrypter = enc.Encrypter(enc.AES(aesKey, mode: enc.AESMode.cbc));

    final encrypted = enc.Encrypted.fromBase16(encryptedData);
    logger(encryptedData, 'Encrypted data');
    logger(encrypter.decrypt(encrypted, iv: ivBytes), 'Decrypted data');
    return encrypter.decrypt(encrypted, iv: ivBytes);
  } catch (e) {
    logger(e, "Error decrypting: $e");
    return '';
  }
}

String _encryptData(String plaintext) {
  try {
    final aesKey = enc.Key.fromUtf8('68fd9ae3d57c0cfcf76b0e8f3ff68d76');
    final ivBytes = enc.IV.fromUtf8('a88f1a91db32c4f7');

    final encrypter = enc.Encrypter(enc.AES(aesKey, mode: enc.AESMode.cbc));

    final encrypted = encrypter.encrypt(plaintext, iv: ivBytes);

    return encrypted.base16;
  } catch (e) {
    logger(e, "Error encrypting: $e");
    return '';
  }
}
