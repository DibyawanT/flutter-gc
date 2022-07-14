import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListCardWidget extends StatelessWidget {
  final String food_name;
  final int qty;
  final int total_amount;
  const ListCardWidget(
      {Key? key,
      required this.food_name,
      required this.qty,
      required this.total_amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ]),
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.all(3.0),
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                qty.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[900]),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  food_name,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(height: 10),
              Container(
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    '\₹ ' + total_amount.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green[900]),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '12' + ' Jan' + ' 2012',
                style: TextStyle(
                    fontWeight: FontWeight.w100, color: Colors.grey[800]),
              )
            ],
          )
        ],
      ),
    );
  }
}
