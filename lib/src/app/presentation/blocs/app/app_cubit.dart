import 'package:bloc/bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_project_template/src/core/session/session_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit(this.service) : super(const AppState.initial());

  final SessionService service;

  void change() async {
    final hasSession = await service.hasSession;
    if (hasSession) {
      emit(const AppState.authenticated());
    } else {
      emit(const AppState.unAuthenticated());
    }
    FlutterNativeSplash.remove();
  }
}
