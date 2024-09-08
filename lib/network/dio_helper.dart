import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.goldapi.io/api/',
        receiveDataWhenStatusError: true,
      ),
    );

    // Adding interceptor for logging
    dio!.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        print("Requesting: ${options.uri}");
        print("Headers: ${options.headers}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print("Response: ${response.data}");
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        print("Request Error: ${e.response?.data ?? e.message}");
        return handler.next(e);
      },
    ));
  }

  static Future<Response> getData(String url) {
    dio!.options.headers = {
      'x-access-token': 'goldapi-quelsm0sofy9h-io', // Make sure the token is correct
    };

    return dio!.get(url);
  }
}
