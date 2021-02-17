import 'dart:js_util';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:ya_stukachok_platform_interface/ya_stukachok_platform_interface.dart';
import 'package:ya_stukachok_web/src/ym_wrapper.dart';

/// A web implementation of the YaStukachok plugin.
class YaStukachokWeb extends YaStukachokPlatform {
  static void registerWith(Registrar registrar) {
    YaStukachokPlatform.instance = YaStukachokWeb();
  }

  @override
  void hit(int counterId, String url, Map<String, dynamic> options) {
    callMetrika(null, [counterId, 'hit', url, jsify(options)]);
  }

  @override
  void initCounter(int counterId, Map<String, dynamic> parameters) {
    callMetrika(null, [counterId, 'init', jsify(parameters)]);
  }

  @override
  void ecommerceAction(EcommerceUnit action) {
    if (dataLayer == null) {
      dataLayer = [];
    }
    dataLayer.add(jsify(action.toJson()));
  }
}
