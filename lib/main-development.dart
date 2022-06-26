import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_project_template/bootstrap.dart';
import 'package:logging/logging.dart';

import 'src/app/app.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) => dev.log(record.message));
  }
  await dotenv.load(fileName: '.env-development');
  await bootstrap(() => App());
}
