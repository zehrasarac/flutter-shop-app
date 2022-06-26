import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_app/core/model/my_app_user.dart';

MyAppUser convertUser(UserCredential user) {
  return MyAppUser(userId: user.user.uid, userMail: user.user.email);
}
