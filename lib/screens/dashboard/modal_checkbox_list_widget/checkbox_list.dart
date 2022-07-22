import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckBoxListWidget extends StatefulWidget {
  final String month;
  final String year;
  const CheckBoxListWidget({this.month = '', this.year = '',Key? key})
      : super(key: key);

  factory CheckBoxListWidget.fromJson(Map<String, dynamic> json) {
    return CheckBoxListWidget(
      month: json["month"],
      year: json["year"],
    );
  }
  @override
  State<CheckBoxListWidget> createState() => _CheckBoxListWidgetState();
}

class _CheckBoxListWidgetState extends State<CheckBoxListWidget> {

bool ? valuefirst = false; 

  @override
  Widget build(BuildContext context) {
    var datedata = [
      {
        "month": "Jan",
        "year": "2022",
      },
      {
        "month": "Feb",
        "year": "2022",
      },
      {
        "month": "Mar",
        "year": "2022",
      },
      {
        "month": "Apr",
        "year": "2022",
      },
      {
        "month": "May",
        "year": "2022",
      }
    ];
    var rest = datedata as List;
    List<CheckBoxListWidget> list = rest
        .map<CheckBoxListWidget>((json) => CheckBoxListWidget.fromJson(json))
        .toList();

    return Container(
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // child: Text('lol'),
              child: Center(
                child: CheckboxListTile(
                  title: Text(list[index].month),
                  value: this.valuefirst,  
                  onChanged: (bool ? value) {  
                    setState((){  
                      this.valuefirst = value ;
                    });  
                  },
                ),
              ),
            );
          }),
    );
  }
}
