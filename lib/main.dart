import 'package:flutter/material.dart';
import 'package:flutter_app/json.dart';
import 'package:flutter_app/jsonParse.dart';
import 'package:flutter_app/jsonParseMaindemo.dart';

import 'jsonParse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: JsonParsing(),
    );
  }
}

