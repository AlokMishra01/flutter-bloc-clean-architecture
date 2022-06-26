import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_project_template/src/core/constants/storage_keys.dart';
import 'package:flutter_project_template/src/core/routes/app_router.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../logging/logger.dart';
import '../network/auth_interceptor.dart';
import '../network/device_interceptor.dart';

@module
abstract class RegisterModules {
  @singleton
  AppRouter get router => AppRouter();

  @lazySingleton
  DeviceInfoPlugin get plugin => DeviceInfoPlugin();

  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();

  @lazySingleton
  Dio dio(DeviceInterceptor deviceInterceptor,
          AuthInterceptor authInterceptor) =>
      Dio(BaseOptions(
        baseUrl: dotenv.env['BASE_URL']!,
        receiveTimeout: 60000,
        connectTimeout: 60000,
        responseType: ResponseType.json,
        headers: <String, dynamic>{
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ))
        ..interceptors.addAll([
          LogInterceptor(logPrint: logger.fine),
          deviceInterceptor,
          authInterceptor,
        ]);

  @lazySingleton
  GraphQLClient client(Dio dio) {
    return GraphQLClient(
      link: Link.from([DioLink(dotenv.env['GRAPHQL_ENDPOINT']!, client: dio)]),
      cache: GraphQLCache(
        store: HiveStore(Hive.box<Map<String, dynamic>>(StorageKeys.cacheBox)),
      ),
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
          error: ErrorPolicy.ignore,
          cacheReread: CacheRereadPolicy.mergeOptimistic,
        ),
        watchQuery: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
          error: ErrorPolicy.ignore,
          cacheReread: CacheRereadPolicy.mergeOptimistic,
        ),
        mutate: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.ignore,
          cacheReread: CacheRereadPolicy.mergeOptimistic,
        ),
        watchMutation: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.ignore,
          cacheReread: CacheRereadPolicy.mergeOptimistic,
        ),
        subscribe: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
          error: ErrorPolicy.ignore,
          cacheReread: CacheRereadPolicy.mergeOptimistic,
        ),
      ),
    );
  }
}
