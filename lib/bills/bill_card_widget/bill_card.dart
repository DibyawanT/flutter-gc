import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  const BillCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      children: [
                ExpansionPanel(
      headerBuilder: (context, isExpanded) => {
        return ListTile(
          title: Text('Jan 2022'),
        ),
      },
      body: ListTile(
          title: Text('Onek Poisha'),
        ),
    );
      ],
    );
  }
}
