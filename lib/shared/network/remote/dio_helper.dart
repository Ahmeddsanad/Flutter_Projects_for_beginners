import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl:'https://newsapi.org/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
  required String url ,
  required Map<String,dynamic> Query,
  // required dynamic Query ,
}) async
  {
    return await dio.get(url, queryParameters: Query);
  }
}
