import 'package:dio/dio.dart';

class HttpManager {
  static const base_url = 'http://app.u17.com/v3/appV3_3/ios/phone/';

  factory HttpManager() => _getInstance();

  static HttpManager get instance => _getInstance();
  static HttpManager _instance;

  Dio _dio;

  HttpManager._internal() {
    _dio = Dio(BaseOptions(
        baseUrl: base_url,
        sendTimeout: 5000,
        connectTimeout: 5000,
        receiveTimeout: 5000));
    _dio.interceptors.add(LogInterceptor(
        request: false,
        requestHeader: false,
        requestBody: false,
        responseHeader: false,
        responseBody: false));
  }

  static HttpManager _getInstance() {
    if (_instance == null) {
      _instance = HttpManager._internal();
    }
    return _instance;
  }

  void get(String url, {
    Map<String, dynamic> params,
    Function success,
    Function fail
  })  => _request(url, params: params, success: success, fail: fail);

  void post(String url, {
    Map<String, dynamic> params,
    Map<String, dynamic> data,
    Function success,
    Function fail
  }) => _request(url, params: params, data: data, success: success, fail: fail);

  void _request(String url,{
    String method = 'get',
    Map<String, dynamic> params,
    Map<String, dynamic> data,
    Function success,
    Function fail
  }) {
    if (method == 'get') {
      _dio.get(url, queryParameters: params).then((response) {
        if (response==null || response.data == null) {
          if (fail != null) fail('response为空');
        }
        if (success != null) success(response.data);
      }).catchError((e) {
        if (fail != null) fail('error ${e.toString()}');
      });
    }
    else if (method == 'post') {
      _dio.post(url, queryParameters: params, data: data).then((response) {
        if (response==null || response.data == null) {
          if (fail != null) fail('response为空');
        }
        if (success != null) success(response.data);
      }).catchError((e) {
        if (fail != null) fail('error ${e.toString()}');
      });
    }
  }
}
