import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:admin_v2/shared/app/extension/helper.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

class NetworkProvider {
  final Dio _dio;
  final bool isCommon;
  static final Map<String, Response> _cache = {};
    Dio get dio => _dio;

 // var dio;

  NetworkProvider._(this._dio, this.isCommon);

  static Future<NetworkProvider> create({bool isCommon = false}) async {
    final url = isCommon ? '' : await baseUrl;

    final dio = Dio(
      BaseOptions(baseUrl: url, headers: {"Content-Type": "application/json"}),
    );

    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        logPrint: print,
        retries: 3,
        retryEvaluator: (error, attempt) {
          final status = error.response?.statusCode;
          return !(status == 403 || status == 401 || status == 400);
        },
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          String fullUrl = '${dio.options.baseUrl}${options.path}';
          log('➡️ Request: $fullUrl');
          if (options.contentType == 'multipart/form-data') {
            log('Request Data = ${options.data}');
          } else {
            log('Request Data = ${jsonEncode(options.data)}');
          }

          if (!options.headers.containsKey('auth')) {
            final token = await AuthUtils.instance.readAccessToken;
            log("Token =- =-= -= -=$token");
            if (token?.isNotEmpty ?? false) {
              options.headers['Authorization'] = 'Bearer $token';
            }
          }

          return handler.next(options);
        },
        onResponse: (response, handler) {
          log('✅ Response: ${response.data}');
          return handler.next(response);
        },
        onError: (error, handler) async {
          log('❌ Error ${error.response?.statusCode}: ${error.response}');

          if (error.response?.statusCode == 403 &&
              !error.requestOptions.extra.containsKey('retry')) {
            try {
              String? newToken = await _refreshToken();
              error.requestOptions.headers['Authorization'] =
                  'Bearer $newToken';
              error.requestOptions.extra['retry'] = true;

              final response = await dio.request(
                error.requestOptions.path,
                options: Options(
                  method: error.requestOptions.method,
                  headers: error.requestOptions.headers,
                ),
                data: error.requestOptions.data,
                queryParameters: error.requestOptions.queryParameters,
              );

              return handler.resolve(response);
            } catch (e) {
              return handler.reject(
                DioException(
                  requestOptions: error.requestOptions,
                  error: 'Failed to refresh token',
                ),
              );
            }
          }

          return handler.next(error);
        },
      ),
    );

    return NetworkProvider._(dio, isCommon);
  }

  Future<Response<T>> _makeRequest<T>(
    String method,
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    bool force = false,
  }) async {
    final cacheKey = _generateCacheKey(
      method,
      path,
      data ?? queryParameters ?? {},
    );

    if (_cache.containsKey(cacheKey) && force && method == 'GET') {
      return _cache[cacheKey]! as Response<T>;
    }

    try {
      Response<T> response;
      switch (method) {
        case 'GET':
          response = await _dio.get<T>(
            path,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress,
          );
          break;
        case 'POST':
          response = await _dio.post<T>(
            path,
            data: Helper().removeNullValues(data ?? {}),
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          );
          break;
        case 'PUT':
          response = await _dio.put<T>(
            path,
            data: data,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          );
          break;
        case 'DELETE':
          response = await _dio.delete<T>(
            path,
            data: data,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
          );
          break;
        case 'PATCH':
          response = await _dio.patch<T>(
            path,
            data: Helper().removeNullValues(data ?? {}),
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
          );
          break;
        default:
          throw UnsupportedError('Unsupported HTTP method');
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        _cache[cacheKey] = response;
      }

      return response;
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
    bool force = false,
  }) => _makeRequest<T>(
    'GET',
    path,
    queryParameters: queryParameters,
    options: options,
    cancelToken: cancelToken,
    onReceiveProgress: onReceiveProgress,
    force: force,
  );

  Future<Response<T>> post<T>(
    String path, {
    Map<String, dynamic>? data,
    FormData? formData,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    bool force = false,
  }) => _makeRequest<T>(
    'POST',
    path,
    data: data ?? formData,
    queryParameters: queryParameters,
    options: options,
    cancelToken: cancelToken,
    onSendProgress: onSendProgress,
    onReceiveProgress: onReceiveProgress,
    force: force,
  );

  Future<Response<T>> put<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    bool force = false,
  }) => _makeRequest<T>(
    'PUT',
    path,
    data: data,
    queryParameters: queryParameters,
    options: options,
    cancelToken: cancelToken,
    onSendProgress: onSendProgress,
    onReceiveProgress: onReceiveProgress,
    force: force,
  );

  Future<Response<T>> delete<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    bool force = false,
  }) => _makeRequest<T>(
    'DELETE',
    path,
    data: data,
    queryParameters: queryParameters,
    options: options,
    cancelToken: cancelToken,
    force: force,
  );

  Future<Response<T>> patch<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    bool force = false,
  }) => _makeRequest<T>(
    'PATCH',
    path,
    data: data,
    queryParameters: queryParameters,
    options: options,
    cancelToken: cancelToken,
    force: force,
  );

  Future<Response<T>> formData<T>(
    String path, {
    FormData? formData,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    return _dio.post<T>(
      path,
      data: formData,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  String _generateCacheKey(
    String method,
    String url,
    Map<String, dynamic> data,
  ) {
    return '$method|$url|${jsonEncode(data)}';
  }

  static Future<String?> _refreshToken() async {
    log('🔄 Refresh token called');
    try {
      // final refreshToken = await AuthUtils.instance.readRefreshTokens;
      final response = await Dio().post(
        "${await baseUrl}/users/login/refresh/",
        data: {"refresh": ''}, // put real token here
      );
      if (response.statusCode == 200) {
        final newAccessToken = response.data['access'];
        // Save new tokens if needed
        return newAccessToken;
      }
    } catch (e) {
      log('🔁 Refresh token failed: $e');
    }
    return null;
  }
}

Future<String> get baseUrl async {
  return AuthUtils.instance.readUserData().then((value) => value?.apiUrl ?? '');
}
