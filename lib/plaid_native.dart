
import 'dart:async';

import 'package:flutter/services.dart';

class PlaidNative {
  static const MethodChannel _channel =
      const MethodChannel('kelvinforteta.dev/plaid_native');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
