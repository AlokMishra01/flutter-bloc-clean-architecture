import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_project_template/src/core/helpers/device_info_helper.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeviceInterceptor extends Interceptor {
  DeviceInterceptor(this.helper);

  final DeviceInfoHelper helper;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final deviceType = Platform.isAndroid ? 'Android' : 'Ios';
    final deviceId = await helper.getDeviceId();
    options.headers.addAll({
      'device-type': deviceType,
      'device-id': deviceId,
      'random': Random().nextInt(10),
    });
    handler.next(options);
  }
}
