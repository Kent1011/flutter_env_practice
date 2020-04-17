import 'package:global_configuration/global_configuration.dart';

class EnvHelper {
  static String get apiUrl => GlobalConfiguration().getString('apiUrl');

  static String get appName => GlobalConfiguration().getString('appName');

  static updateAppName(String name) =>
      GlobalConfiguration().updateValue('appName', name);
}
