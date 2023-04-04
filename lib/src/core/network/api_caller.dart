import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_manager.dart';

import '../constants/app_texts.dart';

abstract class ApiCaller {
  Future<ApiResponse> get({
    required String url,
    Map<String, dynamic>? params,
  });
  Future<ApiResponse> post({
    required String url,
    required Map<String, dynamic> body,
  });
}

class DioApiCaller extends ApiCaller {
  final Dio _dio;
  final AuthenticationManager _authManager;
  DioApiCaller(this._dio, this._authManager) {
    _addInterceptors();
  }

  @override
  Future<ApiResponse> get({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    try {
      log("GET: $url, params: $params");
      final res = await _dio.get(url, queryParameters: params);
      log(res.data.toString());
      return ApiResponse.fromJson(res.data, res.statusCode ?? 500);
    } on DioError catch (e, s) {
      log(e.response?.data?.toString() ?? '');
      log(s.toString());
      return ApiResponse(
        data: e.response?.data,
        statusCode: e.response?.statusCode ?? 500,
        message: e.response?.data['message'] as String,
      );
    } catch (e) {
      return ApiResponse(
        data: null,
        statusCode: 400,
        message: AppTexts.errorMessage,
      );
    }
  }

  @override
  Future<ApiResponse> post({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    try {
      log("POST: $url, body: $body");
      final res = await _dio.post(url, data: body);
      return ApiResponse.fromJson(res.data, res.statusCode ?? 500);
    } on DioError catch (e) {
      return ApiResponse(
        data: e.response?.data,
        statusCode: e.response?.statusCode ?? 500,
        message: e.response?.data['message'] ?? AppTexts.errorMessage,
      );
    } catch (e, s) {
      log("Error from post cathc $e");
      log("Error from post cathc $s");
      return ApiResponse(
        data: null,
        statusCode: 400,
        message: AppTexts.errorMessage,
      );
    }
  }

  void _addInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _getToken();
          options.headers['Authorization'] = 'Bearer $token';
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {

          if (response.statusCode == 401) {
            _authManager.logout();
          }

          return handler.next(response);
        },
      ),
    );
  }

  Future<String> _getToken() async {
    final token = _authManager.getJwtToken();
    return token ?? "";
  }
}

class ApiResponse<T> {
  final T data;
  final int statusCode;
  final String message;

  ApiResponse({
    required this.data,
    required this.statusCode,
    required this.message,
  });

  isSuccessful() => statusCode >= 200 && statusCode < 300;
  isUnsuccessful() => !isSuccessful();

  factory ApiResponse.fromJson(Map<String, dynamic> json, int statusCode) {
    log("Response: $json with status code: $statusCode");
    return ApiResponse(
      data: json['data'],
      statusCode: statusCode,
      message: json['message'] ?? "Something went wrong",
    );
  }

  @override
  String toString() {
    return 'ApiResponse(data: $data, statusCode: $statusCode, message: $message)';
  }
}
