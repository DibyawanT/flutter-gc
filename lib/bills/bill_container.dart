import 'package:flutter/material.dart';

class BillContainer extends StatelessWidget {
  const BillContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: BillCard(),
            );
          },
        ),
      ),
    );
  }
}
