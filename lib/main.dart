import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'list_view_widget/list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Special Method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4682b4),
          title: Text("GeoTech Cafe"),
        ),
        body: Column(
          children: [
            Container(height: 100, child: Text('Henlo World')),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
                child: ListViewWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
