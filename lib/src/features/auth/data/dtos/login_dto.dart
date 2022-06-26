import 'package:flutter_project_template/src/core/session/session_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const LoginDto._();

  const factory LoginDto({
    required String accessToken,
    required String refreshToken,
    required int expiresIn,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  SessionEntity get toEntity => SessionEntity()
    ..accessToken = accessToken
    ..refreshToken
    ..expiresIn = expiresIn;
}
