import 'package:dio/dio.dart';
import 'package:flutter_project_template/src/core/network/token_service.dart';
import 'package:flutter_project_template/src/core/session/session_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthInterceptor extends QueuedInterceptorsWrapper {
  AuthInterceptor(this._service, this._tokenService);

  final SessionService _service;
  final TokenService _tokenService;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response!.statusCode == 403 || err.response!.statusCode == 401) {
      final options = err.requestOptions;
      final accessToken = await _tokenService.refreshToken();
      if (accessToken == null || accessToken.isEmpty) {
        return handler.reject(err);
      } else {
        options.headers.addAll({'Authorization': 'Bearer $accessToken'});
        try {
          final _res = await _tokenService.fetch(options);
          return handler.resolve(_res);
        } on DioError catch (e) {
          handler.next(e);
          return;
        }
      }
    }
    handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final hasSession = await _service.hasSession;
    if (hasSession) {
      final token = await _service.session;
      options.headers.addAll({'Authorization': 'Bearer ${token!.accessToken}'});
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
