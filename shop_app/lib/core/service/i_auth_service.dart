import 'package:flutter/material.dart';
import 'package:shop_app/core/model/my_app_user.dart';

abstract class IAuthService {
  Future<MyAppUser> createUserWithEmailAndPassword(
      {@required String email, @required String password});

  Future<MyAppUser> signInEmailAndPassword(
      {@required String email, @required String password});

  //Future<MyAppUser> createUser(
  //   {@required String firsName,
  //   @required String lastName,
  // @required String phoneNumber,
  // @required String address});

  Future<void> signOut();
  Stream<MyAppUser> get onAuthStateChange;
}
