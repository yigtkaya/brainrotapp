import 'package:brainrotapp/core/environment/app_configuration.dart';
import 'package:envied/envied.dart';

part 'envied.g.dart';

@Envied(path: '.env', obfuscate: true)
final class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'key')
  static final String _key = _DevEnv._key;

  @override
  String get key => _key;
}
