import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final _connectivity = Connectivity();

  Future<bool> hasInternetConnection() async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  Stream<bool> get onConnectivityChanged => _connectivity.onConnectivityChanged
      .map((result) => result != ConnectivityResult.none);
}
