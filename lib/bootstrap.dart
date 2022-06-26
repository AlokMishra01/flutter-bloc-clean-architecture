import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/core/constants/storage_keys.dart';
import 'src/core/di/injector.dart';
import 'src/core/helpers/encryption_helper.dart';
import 'src/core/logging/logger.dart';
import 'src/core/session/session_entity.dart';

class AppBlocObserver extends BlocObserver {
  @override
  Future<void> onChange(BlocBase bloc, Change change) async {
    super.onChange(bloc, change);
    logger.fine('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.fine('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  GoogleFonts.config.allowRuntimeFetching = false;

  FlutterError.onError = (FlutterErrorDetails details) {
    logger.fine(details.exceptionAsString(), details.exception, details.stack);
  };
  _addFontsLicenses();
  await _initDependencies();
  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(await builder()),
        blocObserver: AppBlocObserver(),
      );
    },
    (Object error, StackTrace stackTrace) =>
        logger.fine(error.toString(), error, stackTrace),
  );
}

void _addFontsLicenses() {
  LicenseRegistry.addLicense(() async* {
    final robotoLicense =
        await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], robotoLicense);
  });
}

Future<void> _initDependencies() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SessionAdapter());
  await Hive.openBox<SessionEntity>(StorageKeys.sessionBox,
      encryptionCipher: await EncryptionHelper.encryptionKey);
  await Hive.openBox<Map<String, dynamic>>(StorageKeys.cacheBox);
  await configureInjection();
}
