import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_constants.dart';

class ApiService {
  late final Dio _dio;

  ApiService() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
    );
    _dio = Dio(baseOptions);
    _addInterceptors(_dio);
  }

  void _addInterceptors(Dio dio) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
    ));
  }

  Options? _getOptions(String? token) {
    return token != null
        ? Options(headers: {'Authorization': 'Bearer $token'})
        : null;
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    String? token,
  }) {
    return _dio.get(
      path,
      queryParameters: queryParameters,
      data: data,
      options: _getOptions(token),
    );
  }

  Future<Response> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    String? token,
  }) {
    return _dio.post(
      path,
      queryParameters: queryParameters,
      data: data,
      options: _getOptions(token),
    );
  }

  Future<Response> put(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    String? token,
  }) {
    return _dio.put(
      path,
      queryParameters: queryParameters,
      data: data,
      options: _getOptions(token),
    );
  }

  Future<Response> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    String? token,
  }) {
    return _dio.delete(
      path,
      queryParameters: queryParameters,
      data: data,
      options: _getOptions(token),
    );
  }
}
