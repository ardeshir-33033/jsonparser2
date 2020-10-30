import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/Service.dart';

class JsonParsing extends StatefulWidget {
  @override
  _JsonParsingState createState() => _JsonParsingState();
}

class _JsonParsingState extends State<JsonParsing> {

  List<State> _state;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _state = Service().getStates();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: ListView.builder(itemBuilder: (context , index){
            State stt = _state[index];
            return ListTile(
              title: Text(stt.name),
            )
          }),
        )
      )
    );
  }
}
