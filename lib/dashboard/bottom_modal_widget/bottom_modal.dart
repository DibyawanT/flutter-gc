import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:list_view/dashboard/modal_checkbox_list_widget/checkbox_list.dart';

class BottomModal extends StatelessWidget {
  final double Inheight;
  const BottomModal({Key? key, required this.Inheight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Inheight,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: IconButton(
                    alignment: Alignment.topLeft,
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  child: Text('Choose Month'),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => BottomModal(Inheight: 250)),
                    child: Text(
                      'Clear',
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: CheckBoxListWidget(),
          )
        ],
      ),
    );
  }
}
