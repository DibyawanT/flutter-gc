import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String emp_name;
  String food_name;
  int qty;
  int unit_price;

  MyApp({
    this.emp_name = '',
    this.food_name = '',
    this.qty = 0,
    this.unit_price = 0,
  });
  factory MyApp.fromJson(Map<String, dynamic> json) {
    return MyApp(
        emp_name: json["emp_name"],
        food_name: json["food_name"],
        qty: json["qty"],
        unit_price: json["unit_price"]);
  }
  //Special Method
  @override
  Widget build(BuildContext context) {
    var orderdata = [
      {
        "id": 699,
        "createdAt": "2022-07-01T09:01:12.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "Veg Sandwich",
        "unit_price": 20,
        "qty": 1,
        "total_amount": 20
      },
      {
        "id": 701,
        "createdAt": "2022-07-01T09:01:46.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "(Unibic) Choco Hazelnut ",
        "unit_price": 5,
        "qty": 1,
        "total_amount": 5
      },
      {
        "id": 747,
        "createdAt": "2022-07-04T11:04:29.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "Veg Sandwich",
        "unit_price": 20,
        "qty": 1,
        "total_amount": 20
      },
      {
        "id": 766,
        "createdAt": "2022-07-05T06:19:39.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "Veg Fried Maggi",
        "unit_price": 20,
        "qty": 1,
        "total_amount": 20
      },
      {
        "id": 792,
        "createdAt": "2022-07-05T12:21:26.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "Oreo (Red Velvet)",
        "unit_price": 20,
        "qty": 1,
        "total_amount": 20
      },
      {
        "id": 816,
        "createdAt": "2022-07-06T11:24:43.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "(Nestle) Munch",
        "unit_price": 10,
        "qty": 1,
        "total_amount": 10
      },
      {
        "id": 845,
        "createdAt": "2022-07-07T08:49:00.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "(Real) Fruit Mango small",
        "unit_price": 10,
        "qty": 1,
        "total_amount": 10
      },
      {
        "id": 875,
        "createdAt": "2022-07-08T05:10:43.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "Hide N Seek",
        "unit_price": 10,
        "qty": 1,
        "total_amount": 10
      },
      {
        "id": 911,
        "createdAt": "2022-07-11T04:21:14.000Z",
        "emp_name": "Dibyawan Trivedi",
        "food_name": "Lay's (y)",
        "unit_price": 10,
        "qty": 1,
        "total_amount": 10
      }
    ];
    // var data =  json.decode(orderdata);
    var rest = orderdata as List;
    List<MyApp> list = rest.map<MyApp>((json) => MyApp.fromJson(json)).toList();

    print(rest);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4682b4),
          title: Text("GeoTech Cafe"),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Container(
                    margin: const EdgeInsets.all(1.0),
                    padding: const EdgeInsets.all(3.0),
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    child: Row(
                      children: [
                        Expanded(child: Text((index + 1).toString())),
                        Expanded(
                          child: Text(list[index].qty.toString() +
                              'X' +
                              list[index].food_name),
                        ),
                        Expanded(
                            child: Text(
                                (list[index].unit_price * list[index].qty)
                                    .toString())),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
