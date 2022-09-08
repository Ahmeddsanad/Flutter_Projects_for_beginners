import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl:'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type':'application/json',
        },
      ),
    );
  }

  static Future<Response> getData({
  required String url ,
  required Map<String,dynamic> Query,
  String lang = 'ar',
  String? token,
  // required dynamic Query ,
}) async
  {

    dio.options.headers =
    {
      'lang' : lang,
      'Authorization' : token,
    };

    return await dio.get(url, queryParameters: Query);
  }

  static Future<Response> postData({
    required String url ,
    required Map<String,dynamic> data,
    Map<String,dynamic>? Query,
    String lang = 'ar',
    String? token,
}) async
  {

    dio.options.headers =
    {
      'lang' : lang,
      'Authorization' : token,
    };

    return dio.post(
      url,
      queryParameters: Query,
      data: data,
    );
  }
}





// in NewsApp we put it up



// class DioHelper {
//   static late Dio dio;
//
//   static init()
//   {
//     dio = Dio(
//       BaseOptions(
//         baseUrl:'https://newsapi.org/',
//         receiveDataWhenStatusError: true,
//       ),
//     );
//   }
//
//   static Future<Response> getData({
//     required String url ,
//     required Map<String,dynamic> Query,
//     // required dynamic Query ,
//   }) async
//   {
//     return await dio.get(url, queryParameters: Query);
//   }
// }
