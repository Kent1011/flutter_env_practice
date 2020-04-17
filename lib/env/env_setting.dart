import 'package:flutter/material.dart';
import 'package:flutterenvpratice200417/app.dart';
import 'package:global_configuration/global_configuration.dart';

abstract class EnvSetting {
  String get env;

  @mustCallSuper
  Future<void> initBeforeAppStart() async {}

  EnvSetting() {
    _init();
  }

  Future<void> _init() async {
    await _loadEnvConfig();
    runApp(App());
  }

  Future<void> _loadEnvConfig() async {
    try {
      await GlobalConfiguration().loadFromAsset(env);
    } catch (e) {
      print(e);
    }
  }
}
