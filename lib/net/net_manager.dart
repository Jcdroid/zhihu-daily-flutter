import 'package:dio/dio.dart';

class NetworkManager {
  Dio dio;
  Options options;

  static NetworkManager instance;

  static NetworkManager getInstance() {
    if(instance == null) {
      instance = new NetworkManager();
    }
    return instance;
  }

  NetworkManager() {
    options = new Options(
      baseUrl: "http://news-at.zhihu.com",
      connectTimeout: 10000,
      receiveTimeout: 3000,
      headers: {}
    );
    dio = new Dio(options);
  }
  
  get(path, {data}) async {
    Response response = await dio.get(path, data: data);
    return response.data;
  }

  post(path, {data}) async {
    Response response = await dio.post(path, data: data);
    return response.data;
  }
}