import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  const BillCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [buildExpandList(context)],
    );
  }

  Widget buildExpandList(BuildContext context) => ExpansionTile(
        title: Text('Jan 2022'),
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text('Monthly Bill'),
                  ),
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
                        '\₹ ' + '300',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[900]),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      );
}
