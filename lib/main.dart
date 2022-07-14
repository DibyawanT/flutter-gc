import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:list_view/user_card_widget/user_card.dart';

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
        body: 
        Container(
          color: Color(0xffABC9FF),
          child: Column(
            children: [
              Container(
                color: Color(0xffABC9FF),
                height: 100,
                child: UserCardWidget(emp_name: 'Dibyawan'),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40))),
                  child: ListViewWidget(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
