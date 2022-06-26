import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/components/splash_content.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {"text": "Hadi Başlayalım!", "image": "assets/images/splash_1.png"},
    {
      "text": "Dilerseniz mağazalarımızı ziyaret edebilirsiniz",
      "image": "assets/images/splash_2.png"
    },
    {
      "text":
          "Çok mu meşgulsünüz? Dilediğiniz an siparişlerinizi verebilirsiniz",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30)),
                child: Column(
                  children: [
                    Row(),
                    Spacer(),
                    DefaultButton(
                      text: "Devam",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routaName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
