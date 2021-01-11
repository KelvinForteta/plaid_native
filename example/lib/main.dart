import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plaid_native/plaid_native.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> _open() async {
    var platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await PlaidNative.open;
      print(platformVersion);
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plaid Native Example'),
        ),
        body: Center(
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {
              _open();
            },
            child: Text(
              'Open Plaid',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
