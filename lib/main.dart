import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:list_view/email_verification_widget/email_verification.dart';
import 'package:list_view/user_card_widget/user_card.dart';

import 'bottom_modal_widget/bottom_modal.dart';
import 'list_view_widget/list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Special Method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4682b4),
        title: Text("GeoTech Cafe"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/gc-bg.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              height: 150,
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
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        margin: const EdgeInsets.all(10),
                        // ignore: sort_child_properties_last
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: OutlinedButton(
                                  onPressed: () => showModalBottomSheet(
                                      context: context,
                                      builder: (context) => BottomModal()),
                                  child: Text('Month'),
                                ),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: Container(
                                child: OutlinedButton(
                                  onPressed: () => showModalBottomSheet(
                                      context: context,
                                      builder: (context) => BottomModal()),
                                  child: Text('Sort'),
                                ),
                              ),
                            )
                          ],
                        ),
                        height: 30,
                      ),
                      Expanded(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        EmailVerificationScreen(),
                                  ),
                                );
                              },
                              child: ListViewWidget())),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
