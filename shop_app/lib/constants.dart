import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-0.]+@[a-zA-Z0-9.]+\.[a-zA-Z]+");
const String kEmailNullError = "Lütfen mail girin";
const String kInvalidEmailError = "Lütfen geçerli bir mail adresi girin";
const String kPassNullError = "Lütfen şifre girin";
const String kShortPassError = "Şifre en az 8 karakterli olmalı";
const String kMatchPassError = "Şifre eşleşmiyor";
const String kNameNullError = "Lütfen isim girin";
const String kLastNameNullError = "Lütfen soyisim girin";
const String kPhoneNumberNullError = "Lütfen telefon numaranızı girin";
const String kAddressNullError = "Lütfen adresinizi girin";
