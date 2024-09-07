import 'package:dio/dio.dart';

class DioHelper {
  static  Dio? dio ;

  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.goldapi.io/api/',
        receiveDataWhenStatusError: true,
      )
    );
  }


Future<Response> getData(String url){
  dio!.options.headers={
    'x-access-token' : 'goldapi-quelsm0sofy9h-io'
  };

  return dio!.get(url);
 }
}