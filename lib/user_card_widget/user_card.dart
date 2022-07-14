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
        Row(
          children: [
            Text(
              'Welcome '.toUpperCase(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                fontFamily: 'Helvetica',
                color: Colors.white,
              ),
            ),
            Text(
              '$emp_name ,'.toUpperCase(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Helvetica',
                color: Colors.white,
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              'Your Orders Are'.toUpperCase(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                fontFamily: 'Helvetica',
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
