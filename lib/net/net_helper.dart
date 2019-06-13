import 'net_manager.dart';

import '../data/entity/news.dart';

class NetworkHelper {

  static NetworkHelper instance;

  static NetworkHelper getInstance() {
    if (instance == null) {
      instance = NetworkHelper();
    }
    return instance;
  }

  void getLatestNews() {
    var data = NetworkManager.getInstance().get('/api/3/stories/latest');
    print('start');
    print(data);
    print('end');
  }
  
}