import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class ANetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfo implements ANetworkInfo {
  Connectivity con;

  NetworkInfo({required this.con});
  @override
  Future<bool> get isConnected async {
    final res = await Connectivity().checkConnectivity();
    if (res == ConnectivityResult.mobile ||
        res == ConnectivityResult.wifi ||
        res == ConnectivityResult.ethernet) {
      log('connection');
      return true;
    } else {
      log('no connection');
      return false;
    }
  }
}
