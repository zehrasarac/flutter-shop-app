import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/color_dots.dart';
import 'package:shop_app/screens/details/components/product_description.dart';
import 'package:shop_app/screens/details/components/product_images.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;
  final Function addCart;

  const Body({Key key, @required this.product, this.addCart}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorsDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenWidth(5),
                            bottom: getProportionateScreenWidth(20),
                          ),
                          child: DefaultButton(
                            text: "Sepete Ekle",
                            press: addCart,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
