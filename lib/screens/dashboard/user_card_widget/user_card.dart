import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserCardWidget extends StatelessWidget {
  final String emp_name;

  const UserCardWidget({
    Key? key,
    required this.emp_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:30),
        Row(
          children: [
            Text(
              'welcome ',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
                fontFamily: 'Sora',
                color: Colors.black,
              ),
            ),
            Text(
              '$emp_name ,',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sora',
                color: Colors.black,
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              'Your orders are',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                fontFamily: 'Sora',
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }
}
