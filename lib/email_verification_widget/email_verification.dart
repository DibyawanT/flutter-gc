import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:list_view/list_card_widget/list_card.dart';
import 'package:list_view/main.dart';
import 'package:list_view/user_card_widget/user_card.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);
  
  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff4682b4),
          title: Text("Email Verification")
      ),
      body: Center(
        child: ElevatedButton(onPressed:()=> Navigator.pop(context), child: const Text("Go Back")
        ),
      ),
    );
  }
}