import 'package:dio/dio.dart';

import '../local_services/cache_keys.dart';
import 'endpoints.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> postData({
    required String endPoint,
    bool sendToken = false,
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    _dio.options.headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Accept-Language": CacheKeysManger.getUserLanguageFromCache(),
      if (sendToken) "Authorization": "Bearer ${CacheKeysManger.tokenStatus()}"
    };
    var response = await _dio.post(
      "${EndPoints.baseUrl}$endPoint",
      data: data,
      queryParameters: query,
    );
    return response;
  }

  Future<Response> postDataWithImage({
    required String endPoint,
    bool sendAuthToken = false,
    FormData? data,
    String? contentType,
    Map<String, dynamic>? query,
  }) async {
    _dio.options.headers = {
      "Accept": "*/*",
      "Content-Type": contentType ?? "application/json",
      "Accept-Language": CacheKeysManger.getUserLanguageFromCache(),
      if (sendAuthToken)
        "Authorization": "Bearer ${CacheKeysManger.tokenStatus()}"
    };
    var response = await _dio.post(
      "${EndPoints.baseUrl}$endPoint",
      data: data,
      queryParameters: query,
    );
    return response;
  }

  Future<Response> postListData({
    required String endPoint,
    bool sendAuthToken = false,
    List<Map<String, dynamic>>? data,
  }) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
      "Accept-Language": CacheKeysManger.getUserLanguageFromCache(),
    };
    var response = await _dio.post(
      "${EndPoints.baseUrl}$endPoint",
      data: data,
    );
    return response;
  }

  Future<Response> get({
    required String endPoint,
    bool sendToken = false,
    dynamic data,
    dynamic query,
  }) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
      "Accept-Language": CacheKeysManger.getUserLanguageFromCache(),
      if (sendToken) "Authorization": "Bearer ${CacheKeysManger.tokenStatus()}"
    };
    var response = await _dio.get(
      '${EndPoints.baseUrl}$endPoint',
      queryParameters: query,
      data: data,
    );
    return response;
  }

  Future<Response> putData({
    required String endPoint,
    dynamic data,
    bool sendToken = false,
    dynamic query,
  }) async {
    _dio.options.headers = {
      "accept": "*/*",
      "Content-Type": "multipart/form-data",
      if (sendToken) "Authorization": "Bearer ${CacheKeysManger.tokenStatus()}",
      "Accept-Language": CacheKeysManger.getUserLanguageFromCache(),
    };
    var response = await _dio.put('${EndPoints.baseUrl}$endPoint',
        data: data, queryParameters: query);
    return response;
  }

  Future<Response> deleteData({
    required String endPoint,
    bool sendToken = false,
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    _dio.options.headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Accept-Language": CacheKeysManger.getUserLanguageFromCache(),
      if (sendToken) "Authorization": "Bearer ${CacheKeysManger.tokenStatus()}"
    };
    var response = await _dio.delete(
      "${EndPoints.baseUrl}$endPoint",
      data: data,
      queryParameters: query,
    );
    return response;
  }
}
