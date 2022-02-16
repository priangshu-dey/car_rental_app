import 'package:car_rental_app/screens/login_screen/components/login_form.dart';
import 'package:car_rental_app/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignForm(),
    );
  }
}
