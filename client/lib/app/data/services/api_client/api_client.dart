
import 'aaexp.clients.dart';

enum MethodType { get, post, put, delete, patch }

mixin ApiClient {
  Future<CustomResponse<T>> request<T, M>({
    required String path,
    required MethodType method,
    Map<String, dynamic>? payload,
    Map<String, dynamic>? queryParameters,
    T Function(M json)? fromJson,
  });
}
