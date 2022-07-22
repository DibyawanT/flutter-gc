import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:list_view/models/order_model.dart';
import 'package:list_view/screens/dashboard/list_card_widget/list_card.dart';
import 'package:list_view/services/order_services.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<Order>? list;
  var isloaded = false;
  @override
  void initState(){
    super.initState();
    getData();
  }

  getData() async {
    list = await OrderServices().getAllOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: list?.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(
                child: ListCardWidget(
                    food_name: list![index].foodName,
                    qty: list![index].qty,
                    total_amount: list![index].totalAmount),
              ),
            );
          }),
    );
  }
}

