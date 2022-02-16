import 'package:flutter/material.dart';
const kPrimaryColor = Color.fromRGBO(0,77,64,1);
const kPrimaryLightColor = Color.fromRGBO(57,121,107,1);
const kPrimaryDarkColor = Color.fromRGBO(0,37,26,1);
const kSecondaryColor = Color.fromRGBO(102, 187, 106, 1);
const kPrimaryTextColor = Color.fromRGBO(255, 255, 255, 1);
const kSecondaryTextColor = Color.fromRGBO(255, 255, 255, 1);
const kAnimationDuration = Duration(milliseconds: 200);

final headingstyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);



final RegExp emailValidatorRegExp=
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

