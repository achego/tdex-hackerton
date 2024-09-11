import 'package:client/app/data/providers/auth_provider.dart';
import 'package:client/app/data/services/api_client/custom_response.dart';

class SignUpRepo {
  Future<CustomResponse<dynamic>> verifyUnique() async {
    return AuthProvider.verifyUniquAvailable();
  }
}

final signupRepo = SignUpRepo();
