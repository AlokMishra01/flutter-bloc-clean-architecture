import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_project_template/src/app/presentation/blocs/app/app_cubit.dart';
import 'package:flutter_project_template/src/core/session/session_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../core/utils/bloc_helper.dart';

class MockSessionService extends Mock implements SessionService {}

void main() {
  late MockSessionService _sessionService;

  setUp(() {
    _sessionService = MockSessionService();
  });

  blocTest<AppCubit, AppState>(
    'emits [AppState.unAuthenticated()] when there is no session saved of user',
    build: () => mockCubit(() {
      when(() => _sessionService.hasSession)
          .thenAnswer((invocation) async => false);
      return AppCubit(_sessionService);
    }),
    act: (bloc) => bloc.change(),
    expect: () => [const AppState.unAuthenticated()],
    verify: (_) => verify(() => _sessionService.hasSession).called(1),
  );

  blocTest<AppCubit, AppState>(
    'emits [AppState.authenticated()] when there is  session saved of user',
    build: () => mockCubit(() {
      when(() => _sessionService.hasSession)
          .thenAnswer((invocation) async => true);
      return AppCubit(_sessionService);
    }),
    act: (bloc) => bloc.change(),
    expect: () => [const AppState.authenticated()],
    verify: (_) => verify(() => _sessionService.hasSession).called(1),
  );
}
