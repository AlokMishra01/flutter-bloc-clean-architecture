import 'dart:async';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../constants/storage_keys.dart';
import 'session_entity.dart';

@singleton
class SessionService {
  Future<void> saveSession(SessionEntity object) async {
    final _box = await Hive.box<SessionEntity>(StorageKeys.sessionBox);
    await _box
      ..clear()
      ..add(object);
  }

  Future<SessionEntity?> get session async {
    final _box = await Hive.box<SessionEntity>(StorageKeys.sessionBox);
    return _box.getAt(0);
  }

  Future<bool> get hasSession async {
    final _box = await Hive.box<SessionEntity>(StorageKeys.sessionBox);
    return await _box.isNotEmpty && _box.getAt(0) != null;
  }

  Future<int> deleteAll() async {
    final _box = await Hive.box<SessionEntity>(StorageKeys.sessionBox);
    return await _box.clear();
  }

  FutureOr<bool> get isTokenExpired async {
    final _box = await Hive.box<SessionEntity>(StorageKeys.sessionBox);
    if (_box.isEmpty) return true;
    final session = _box.getAt(0)!;
    final expiryDate =
        DateTime.fromMillisecondsSinceEpoch((session.expiresIn) * 1000);
    final currentDate = DateTime.now();
    return currentDate.isAfter(expiryDate);
  }
}
