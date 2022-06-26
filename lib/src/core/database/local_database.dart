import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_project_template/src/core/database/test_dao.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'local_database.g.dart';

@singleton
@DriftDatabase(tables: [TestTable], daos: [TestDao])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @disposeMethod
  void dispose() async {
    await close();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final dbFile = File(path.join(dbFolder.path, 'app_db.sqlite'));
    return NativeDatabase(dbFile);
  });
}
