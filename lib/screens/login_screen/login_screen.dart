import 'package:car_rental_app/constants.dart';
import 'package:car_rental_app/screens/login_screen/components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName ="/sign_in";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
