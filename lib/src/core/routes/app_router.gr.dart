// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_project_template/src/app/app.dart' as _i1;
import 'package:flutter_project_template/src/features/auth/auth.dart' as _i2;
import 'package:flutter_project_template/src/features/dashboard/dashboard.dart'
    as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i4.AdaptivePage<void>(
          routeData: routeData, child: _i1.SplashPage(key: args.key));
    },
    LoginRoute.name: (routeData) {
      return _i4.AdaptivePage<void>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    DashboardRoute.name: (routeData) {
      return _i4.AdaptivePage<void>(
          routeData: routeData, child: const _i3.DashboardPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(LoginRoute.name, path: '/login'),
        _i4.RouteConfig(DashboardRoute.name, path: '/dashboard')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i5.Key? key})
      : super(SplashRoute.name, path: '/', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard');

  static const String name = 'DashboardRoute';
}
