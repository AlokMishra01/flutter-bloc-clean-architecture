// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:device_info_plus/device_info_plus.dart' as _i8;
import 'package:dio/dio.dart' as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i22;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i9;

import '../../app/presentation/blocs/app/app_cubit.dart' as _i17;
import '../../app/presentation/blocs/locale/locale_cubit.dart' as _i11;
import '../../features/auth/data/repository/auth_repository_impl.dart' as _i25;
import '../../features/auth/data/source/auth_remote_source.dart' as _i23;
import '../../features/auth/domain/repository/auth_repository.dart' as _i24;
import '../../features/auth/presentation/blocs/login/login_cubit.dart' as _i26;
import '../../features/auth/presentation/blocs/login_form/login_form_cubit.dart'
    as _i12;
import '../../features/dashboard/data/repository/dashboard_repository_impl.dart'
    as _i7;
import '../../features/dashboard/data/source/dashboard_local_source.dart'
    as _i4;
import '../../features/dashboard/data/source/dashboard_remote_source.dart'
    as _i5;
import '../../features/dashboard/domain/repository/dashboard_repository.dart'
    as _i6;
import '../database/local_database.dart' as _i10;
import '../database/test_dao.dart' as _i15;
import '../helpers/device_info_helper.dart' as _i19;
import '../network/auth_interceptor.dart' as _i18;
import '../network/device_interceptor.dart' as _i20;
import '../network/network_info.dart' as _i13;
import '../network/token_service.dart' as _i16;
import '../routes/app_router.dart' as _i3;
import '../session/session_service.dart' as _i14;
import 'register_modules.dart' as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.singleton<_i3.AppRouter>(registerModules.router);
  gh.lazySingleton<_i4.DashboardLocalSource>(
      () => _i4.DashboardLocalSourceImpl());
  gh.lazySingleton<_i5.DashboardRemoteSource>(
      () => _i5.DashboardRemoteSourceImpl());
  gh.lazySingleton<_i6.DashboardRepository>(
      () => _i7.DashboardRepositoryImpl());
  gh.lazySingleton<_i8.DeviceInfoPlugin>(() => registerModules.plugin);
  gh.lazySingleton<_i9.InternetConnectionChecker>(
      () => registerModules.connectionChecker);
  gh.singleton<_i10.LocalDatabase>(_i10.LocalDatabase(),
      dispose: (i) => i.dispose());
  gh.factory<_i11.LocaleCubit>(() => _i11.LocaleCubit());
  gh.factory<_i12.LoginFormCubit>(() => _i12.LoginFormCubit());
  gh.lazySingleton<_i13.NetworkInfo>(
      () => _i13.NetworkInfoImpl(get<_i9.InternetConnectionChecker>()));
  gh.singleton<_i14.SessionService>(_i14.SessionService());
  gh.singleton<_i15.TestDao>(_i15.TestDao(get<_i10.LocalDatabase>()));
  gh.lazySingleton<_i16.TokenService>(
      () => _i16.TokenService(get<_i14.SessionService>()));
  gh.factory<_i17.AppCubit>(() => _i17.AppCubit(get<_i14.SessionService>()));
  gh.lazySingleton<_i18.AuthInterceptor>(() => _i18.AuthInterceptor(
      get<_i14.SessionService>(), get<_i16.TokenService>()));
  gh.lazySingleton<_i19.DeviceInfoHelper>(
      () => _i19.DeviceInfoHelper(get<_i8.DeviceInfoPlugin>()));
  gh.lazySingleton<_i20.DeviceInterceptor>(
      () => _i20.DeviceInterceptor(get<_i19.DeviceInfoHelper>()));
  gh.lazySingleton<_i21.Dio>(() => registerModules.dio(
      get<_i20.DeviceInterceptor>(), get<_i18.AuthInterceptor>()));
  gh.lazySingleton<_i22.GraphQLClient>(
      () => registerModules.client(get<_i21.Dio>()));
  gh.lazySingleton<_i23.AuthRemoteSource>(
      () => _i23.AuthRemoteSourceImpl(get<_i22.GraphQLClient>()));
  gh.lazySingleton<_i24.AuthRepository>(() => _i25.AuthRepositoryImpl(
      get<_i23.AuthRemoteSource>(),
      get<_i13.NetworkInfo>(),
      get<_i14.SessionService>()));
  gh.factory<_i26.LoginCubit>(
      () => _i26.LoginCubit(get<_i24.AuthRepository>()));
  return get;
}

class _$RegisterModules extends _i27.RegisterModules {}
