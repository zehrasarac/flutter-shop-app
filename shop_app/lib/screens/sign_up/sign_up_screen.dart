import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routaName = "sign/up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
