import 'dart:async';

import 'package:flutter/services.dart';

class FlutterInsta {
  static const MethodChannel _channel =
      const MethodChannel('flutter_insta');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
