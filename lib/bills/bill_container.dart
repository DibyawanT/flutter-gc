import 'package:flutter/material.dart';

import 'bill_card_widget/bill_card.dart';

class BillContainer extends StatelessWidget {
  const BillContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context,int index) {
            return BillCard();
          },
        ),
      ),
    );
  }
}
