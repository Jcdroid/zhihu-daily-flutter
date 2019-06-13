import 'package:dio/dio.dart';
import 'package:zhihu_daily/api/api_zhihu_daily.dart';

class NetworkManager {
  Dio dio;
  BaseOptions options;

  static NetworkManager instance;

  static NetworkManager getInstance() {
    if(instance == null) {
      instance = new NetworkManager();
    }
    return instance;
  }

  NetworkManager() {
    options = new BaseOptions(
      baseUrl: ZhihuDailyApi.API_ZHIHU_DAILY_HOST,
      connectTimeout: 10000,
      receiveTimeout: 3000,
      headers: {}
    );
    dio = new Dio(options);
  }
  
  Future<Map> get(path) async {
    Response response = await dio.get(path);
    return response.data;
  }

  post(path, {data}) async {
    Response response = await dio.post(path, data: data);
    return response.data;
  }
}