import 'package:flutter/material.dart';
import 'package:flutterenvpratice200417/env/env_setting.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Prod();
}

class Prod extends EnvSetting {
  @override
  String get env => 'prod';
}
