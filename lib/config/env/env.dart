import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static final String key = _Env.key;
  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  static final String url = _Env.url;
}
