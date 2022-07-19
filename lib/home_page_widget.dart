import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:list_view/bills/bill_container.dart';
import 'package:list_view/dashboard/dashboard_widget.dart';
import 'package:list_view/dashboard/user_card_widget/user_card.dart';
import 'dashboard/email_verification_widget/email_verification.dart';
import 'dashboard/bottom_modal_widget/bottom_modal.dart';
import 'dashboard/list_view_widget/list_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    BillContainer()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4682b4),
        title: Text("GeoTech Cafe"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Bills',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent[400],
        onTap: _onItemTapped,
      ),
    );
  }
}
