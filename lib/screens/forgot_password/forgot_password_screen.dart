
import 'package:car_rental_app/constants.dart';
import 'package:car_rental_app/screens/forgot_password/body.dart';
import 'package:flutter/material.dart';
class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
