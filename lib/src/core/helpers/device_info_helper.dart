import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeviceInfoHelper {
  DeviceInfoHelper(this._deviceInfoPlugin);

  final DeviceInfoPlugin _deviceInfoPlugin;

  Future<String> getDeviceId() async {
    late String _deviceIdentity;
    try {
      if (Platform.isAndroid) {
        final AndroidDeviceInfo info = await _deviceInfoPlugin.androidInfo;
        _deviceIdentity = '${info.device}-${info.androidId}';
      } else if (Platform.isIOS) {
        final IosDeviceInfo info = await _deviceInfoPlugin.iosInfo;
        _deviceIdentity = '${info.model}-${info.identifierForVendor}';
      }
    } on PlatformException {
      _deviceIdentity = 'unknown';
    }
    return _deviceIdentity;
  }
}
