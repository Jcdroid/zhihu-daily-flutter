import 'net_manager.dart';

class NetworkHelper {

  static NetworkHelper instance;

  static NetworkHelper getInstance() {
    if (instance == null) {
      instance = NetworkHelper();
    }
    return instance;
  }

  
  
}