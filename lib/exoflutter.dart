import 'dart:async';

import 'package:flutter/services.dart';

class Exoflutter {
  static const MethodChannel _channel =
      const MethodChannel('exoflutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
