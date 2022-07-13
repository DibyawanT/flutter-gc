import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:list_view/list_card_widget/list_card.dart';

class ListViewWidget extends StatelessWidget {
  String emp_name;
  String food_name;
  int qty;
  int unit_price;
  int total_amount;
  ListViewWidget({
    this.emp_name = '',
    this.food_name = '',
    this.qty = 0,
    this.unit_price = 0,
    this.total_amount = 0,
  });
  factory ListViewWidget.fromJson(Map<String, dynamic> json) {
    return ListViewWidget(
        emp_name: json["emp_name"],
        food_name: json["food_name"],
        qty: json["qty"],
        unit_price: json["unit_price"],
        total_amount: json["total_amount"]);
  }

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
    var rest = orderdata as List;
    List<ListViewWidget> list = rest
        .map<ListViewWidget>((json) => ListViewWidget.fromJson(json))
        .toList();
    return Container(
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: ListCardWidget(
                  food_name: list[index].food_name,
                  qty: list[index].qty,
                  total_amount: list[index].total_amount),
            );
          }),
    );
  }
}
