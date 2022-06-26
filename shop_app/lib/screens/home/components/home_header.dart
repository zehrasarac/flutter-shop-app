import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/core/service/i_auth_service.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/components/icon_btn_with_counter.dart';
import 'package:shop_app/screens/home/components/search_field.dart';

import 'package:shop_app/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<IAuthService>(context, listen: false);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            pngSrc: "assets/images/sepeticon.png",
            //numOfItems: 3,
            press: () => Navigator.pushNamed(context, CartScreen.routaName),
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await _authService.signOut();
            },
          ),
        ],
      ),
    );
  }
}
