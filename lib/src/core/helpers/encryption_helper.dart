import 'dart:convert';
import 'dart:typed_data';

import 'package:drift/drift.dart';
import 'package:flutter_project_template/src/core/constants/storage_keys.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

class EncryptionHelper {
  static Future<HiveAesCipher> get encryptionKey async {
    final storage = const FlutterSecureStorage();
    late Uint8List encryptionKey;
    final key = await storage.read(key: StorageKeys.secureStorageKey);
    if (key == null) {
      final _key = Hive.generateSecureKey();
      await storage.write(
          key: StorageKeys.secureStorageKey, value: base64UrlEncode(_key));
      encryptionKey = Uint8List.fromList(_key);
    } else {
      encryptionKey = base64Url.decode(key);
    }
    return HiveAesCipher(encryptionKey);
  }
}
