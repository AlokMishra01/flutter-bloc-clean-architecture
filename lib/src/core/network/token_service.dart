import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_project_template/src/core/di/injector.dart';
import 'package:flutter_project_template/src/core/network/device_interceptor.dart';
import 'package:flutter_project_template/src/core/session/session_service.dart';
import 'package:flutter_project_template/src/features/auth/data/dtos/login_dto.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql/client.dart' hide Response;
import 'package:injectable/injectable.dart';

@lazySingleton
class TokenService {
  TokenService(this._sessionService) {
    _dio = Dio(BaseOptions(
      baseUrl: dotenv.env['BASE_URL']!,
      receiveTimeout: 60000,
      connectTimeout: 60000,
      responseType: ResponseType.json,
      headers: <String, dynamic>{
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ))
      ..interceptors.addAll([getIt<DeviceInterceptor>()]);

    _client = GraphQLClient(
      link: Link.from([
        DioLink(
          dotenv.env['GRAPHQL_ENDPOINT']!,
          client: _dio,
        ),
      ]),
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  }

  final SessionService _sessionService;
  late GraphQLClient _client;
  late Dio _dio;

  Future<Response<dynamic>> fetch(RequestOptions options) =>
      _dio.fetch(options);

  Future<String?> refreshToken() async {
    //TODO: implement your own logics for refresh token
    final session = (await _sessionService.session)!;
    final refreshToken = session.refreshToken;
    final response = await _client.query(
      QueryOptions(
        document: gql('refreshQuery'),
        variables: {'refreshToken': refreshToken},
      ),
    );
    if (response.hasException) return null;
    if (response.data != null) {
      final loginRes = LoginDto.fromJson(response.data!['refreshToken']);
      unawaited(_sessionService.saveSession(loginRes.toEntity));
      return loginRes.accessToken;
    }
    return null;
  }
}
