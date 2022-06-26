part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;

  const factory AppState.authenticated() = _Authenticated;

  const factory AppState.unAuthenticated() = _UnAuthenticated;
}
