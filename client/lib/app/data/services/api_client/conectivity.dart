import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  ConnectivityService() {
    checkInternetConnection();
  }

  bool hasConnection = false;
  ConnectivityResult? connectionMedium;
  Connectivity connectivity = Connectivity();

  StreamController<bool> connectionChangeController =
      StreamController.broadcast();

  Stream<bool> get connectionChange => connectionChangeController.stream;

  Future<bool> get isConnected async {
    final result = await connectivity.checkConnectivity();
    return !result.contains(ConnectivityResult.none);
  }

  Future<bool> checkInternetConnection() async {
    final previousConnection = hasConnection;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    if (previousConnection != hasConnection) {
      connectionChangeController.add(hasConnection);
    }
    return hasConnection;
  }
}
