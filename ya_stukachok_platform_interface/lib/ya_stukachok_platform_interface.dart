import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:ya_stukachok_platform_interface/src/ecommerce.dart';

import 'method_channel_ya_stukachok.dart';

export 'src/ecommerce.dart';

abstract class YaStukachokPlatform extends PlatformInterface {
  YaStukachokPlatform() : super(token: _token);
  static final _token = Object();
  static YaStukachokPlatform _instance = MethodChannelYaStukachok();
  static YaStukachokPlatform get instance => _instance;
  static set instance(YaStukachokPlatform impl) {
    PlatformInterface.verifyToken(impl, _token);
    _instance = impl;
  }

  void initCounter(int counterId, Map<String, dynamic> parameters);

  void hit(int counterId, String url, Map<String, dynamic> options);

  void ecommerceAction(EcommerceUnit action);

  void reachGoal(
    int counterId,
    String target,
    Map<String, dynamic> parameters,
  );
}
