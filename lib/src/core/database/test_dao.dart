import 'package:drift/drift.dart';
import 'package:flutter_project_template/src/core/database/local_database.dart';
import 'package:injectable/injectable.dart';

part 'test_dao.g.dart';

@singleton
@DriftAccessor(tables: [TestTable])
class TestDao extends DatabaseAccessor<LocalDatabase> with _$TestDaoMixin {
  TestDao(LocalDatabase attachedDatabase) : super(attachedDatabase);
}

class TestTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();
}
