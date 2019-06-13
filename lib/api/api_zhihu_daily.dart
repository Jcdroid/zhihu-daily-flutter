import 'package:dio/dio.dart';

class ZhihuDailyApi {
  static const String API_ZHIHU_DAILY_HOST = 'http://news-at.zhihu.com';
  static const String API_LATEST_NEWS = '/api/3/news/latest';
  static const String API_GET_DATE_BEFORE_NEWS = '/api/3/news/before';
  static const String API_NEWS_DETAIL = '/api/3/news';
}