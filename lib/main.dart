import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/shared/di/di.dart';
import 'package:pokemon/src/app_provider.dart';
import 'package:talker/talker.dart';

import 'dart:async';

import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_flutter/talker_flutter.dart';

/// Entry point of the app.
/// Initializes the app and prepares it for use.
void main() {
  TalkerFlutter.init();
  final logger = Talker();
  runZonedGuarded<void>(() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    widgetsBinding.deferFirstFrame();
    Bloc.observer = TalkerBlocObserver(talker: logger);
    await initAllDependencies();
    widgetsBinding.allowFirstFrame();
    runApp(const AppProvider());
    await _catchExceptions(logger);
  }, (error, stack) {
    logger.error("Main level", error, stack);
  });
}

Future<void> _catchExceptions(Talker logger) async {
  try {
    PlatformDispatcher.instance.onError = (error, stackTrace) {
      logger.error(
        'ROOT ERROR: ${Error.safeToString(error)}',
        error,
        stackTrace,
      );
      return true;
    };

    final sourceFlutterError = FlutterError.onError;
    FlutterError.onError = (final details) {
      logger.error(
        'FLUTTER ERROR: $details',
        details.exception,
        details.stack ?? StackTrace.current,
      );
      sourceFlutterError?.call(details);
    };
  } catch (error, stackTrace) {
    logger.error(
      'OTHER ERROR',
      error,
      stackTrace,
    );
  }
}
