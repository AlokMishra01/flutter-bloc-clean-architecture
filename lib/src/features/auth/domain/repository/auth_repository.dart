import 'package:flutter_project_template/src/core/typedefs/typedefs.dart';

abstract class AuthRepository {
  EitherResponse<String> login(Map<String, dynamic> values);
}
