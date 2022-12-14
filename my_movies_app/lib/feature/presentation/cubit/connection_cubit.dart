import 'dart:async';
import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies_app/feature/presentation/cubit/connection_state.dart';

class ConnectionCubit extends Cubit<MyConnectionState>{
  late StreamSubscription<ConnectivityResult> _subscription;
  ConnectionCubit():super(MyConnectionState(false)){
    _subscription=Connectivity().onConnectivityChanged.listen((result) { 
      log('${result!=ConnectivityResult.none}');
      emit(MyConnectionState(result!=ConnectivityResult.none));
    });
    
  }
  
  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}