import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:awesome_flutter_button/awesome_flutter_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: AwesomeFlutterButton(
            onpress: ()
            {
              print("work");
            },
            alignment: Alignment.center,
            fit: BoxFit.contain,
            pause: false,

          )
        )
      ),
    );
  }
}
