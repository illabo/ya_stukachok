@JS()
library ya_stukachok;

import 'dart:js';

import 'package:js/js.dart';

@JS('ym.apply')
external void callMetrika(dynamic context, List<dynamic> parameters);

@JS()
external set dataLayer(List<dynamic> values);
@JS()
external List<dynamic> get dataLayer;
