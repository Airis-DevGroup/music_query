
import 'dart:async';

import 'package:flutter/services.dart';

class MusicQuery {
  static const MethodChannel _channel =
      const MethodChannel('music_query');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
