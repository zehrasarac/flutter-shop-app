import 'package:flutter/material.dart';
import 'package:shop_app/pay/pay_screen.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/routs.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routaName: (context) => SignInScreen(),
  ForgotPasswordScreen.routaName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routaName: (context) => LoginSuccessScreen(),
  SignUpScreen.routaName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routaName: (context) => DetailsScreen(),
  CartScreen.routaName: (context) => CartScreen(),
  PayScreen.routaName: (context) => PayScreen(),
};
