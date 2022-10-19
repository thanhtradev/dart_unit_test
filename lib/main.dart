import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:dart_unit_test/app.dart';
import 'package:dart_unit_test/utils/app_config.dart';

void main() {
  _setupLogging();
  AppConfig.setEnvironment(Environment.dev);
  runApp(const MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
