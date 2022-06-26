import 'package:flutter/material.dart';
import 'package:shop_app/pay/components/body.dart';

class PayScreen extends StatelessWidget {
  static String routaName = "/pay";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
