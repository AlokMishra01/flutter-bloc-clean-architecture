import 'dart:async';

import 'package:flutter_project_template/src/core/base/base_repository.dart';
import 'package:flutter_project_template/src/core/session/session_service.dart';
import 'package:flutter_project_template/src/core/typedefs/typedefs.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/auth_repository.dart';
import '../dtos/login_dto.dart';
import '../source/auth_remote_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends BaseRepository implements AuthRepository {
  AuthRepositoryImpl(this.remoteSource, super.networkInfo, this.sessionService);

  final AuthRemoteSource remoteSource;
  final SessionService sessionService;

  @override
  EitherResponse<String> login(Map<String, dynamic> values) async {
    return await handleNetworkCall<LoginDto, String>(
      call: remoteSource.login(values),
      onSuccess: (loginModel) {
        unawaited(sessionService.saveSession(loginModel.toEntity));
        return 'Success';
      },
    );
  }
}
