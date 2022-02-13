import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 255, 0, 50.0),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/Car Splash.png',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Let\'s get you a car',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
