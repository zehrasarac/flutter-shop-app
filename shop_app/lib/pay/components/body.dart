import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.07),
        Text(
          "Ödeme Bilgileri",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: getProportionateScreenWidth(25),
          ),
        ),
        //Spacer(),
        Text(
          " İş Bankası TR1326364263642\n Ziraat Bankası TR343462613642366",
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(20),
          ),
        ),
      ],
    );
  }
}
