import 'package:flutter/material.dart';
import 'package:shop_app/core/model/my_app_user.dart';
import 'package:shop_app/core/widgets/error_page.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key key, @required this.snapShot}) : super(key: key);
  final AsyncSnapshot<MyAppUser> snapShot;
  @override
  Widget build(BuildContext context) {
    if (snapShot.connectionState == ConnectionState.active) {
      return snapShot.hasData ? LoginSuccessScreen() : SignInScreen();
    }
    return ErrorPage();
  }
}
