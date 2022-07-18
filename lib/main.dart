import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'home_page_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Special Method
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
