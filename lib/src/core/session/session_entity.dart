import 'package:hive_flutter/hive_flutter.dart';

part 'session_entity.g.dart';

@HiveType(typeId: 0, adapterName: 'SessionAdapter')
class SessionEntity extends HiveObject {
  @HiveField(0)
  late String accessToken;
  @HiveField(1)
  late String refreshToken;
  @HiveField(2)
  late int expiresIn;
}
