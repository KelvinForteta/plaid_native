import 'dart:async';

import 'package:flutter/services.dart';

class PlaidNative {
  static const MethodChannel _channel =
      const MethodChannel('kelvinforteta.dev/plaid_native');

  static Future<String> get open async {
    final result = await _channel.invokeMethod('open');
    return result;
  }
}
