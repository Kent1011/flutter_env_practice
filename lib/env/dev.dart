import 'package:flutter/material.dart';
import 'package:flutterenvpratice200417/env/env_setting.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Dev();
}

class Dev extends EnvSetting {
  @override
  String get env => 'dev';
}
