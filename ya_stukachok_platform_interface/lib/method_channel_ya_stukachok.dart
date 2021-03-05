import 'package:flutter/services.dart';
import 'package:ya_stukachok_platform_interface/ya_stukachok_platform_interface.dart';

// No-op by design.
class MethodChannelYaStukachok extends YaStukachokPlatform {
  static const MethodChannel _channel = const MethodChannel('ya_stukachok');

  @override
  void hit(
    int counterId,
    String url,
    Map<String, dynamic> options,
  ) {}

  @override
  void initCounter(
    int counterId,
    Map<String, dynamic> parameters,
  ) {}

  @override
  void ecommerceAction(action) {}

  @override
  void reachGoal(
    String counterId,
    String target,
    Map<String, dynamic> parameters,
    Function callback,
  ) {}
}
