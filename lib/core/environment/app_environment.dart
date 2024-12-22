import 'package:brainrotapp/core/environment/app_configuration.dart';

final class AppEnvironment {
  AppEnvironment.setup({required AppConfiguration configuration}) {
    _configuration = configuration;
  }

  static late final AppConfiguration _configuration;

  static String get key => _configuration.key;
}
