import 'dart:async';
import 'package:flutter/services.dart';

class Gardina {
  static const MethodChannel _channel =
      const MethodChannel('gardina');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  
}
