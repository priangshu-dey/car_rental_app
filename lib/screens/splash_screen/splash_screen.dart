import 'dart:async';

import 'package:car_rental_app/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff00FF00),
              gradient: LinearGradient(
                  colors: [(new Color(0xff00FFF)), (new Color(0xffF2861E))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/tesla.png"),
              height: 200,
              width: 300,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 60),
            alignment: Alignment.center,
            height: 60,
            child: Text(
              "Get Your one!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
