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
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.all(3.0),
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.1,
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.blueAccent),
      // ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/favicon.png',
              fit: BoxFit.scaleDown,
              width: 70,
              height: 70,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  food_name,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'X' + qty.toString(),
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(height: 10),
              Text(
                '\$ ' + total_amount.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green[900]),
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
