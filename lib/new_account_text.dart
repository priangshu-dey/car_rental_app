import 'package:car_rental_app/constants.dart';
import 'package:car_rental_app/screens/login_screen/components/login_form.dart';
import 'package:car_rental_app/screens/login_screen/login_screen.dart';
import 'package:car_rental_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';


class NoAccountText extends StatelessWidget {
  static String routeName = "/registration";
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap:()
          { Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegistrationScreen(),
            ),
          );},
          child: Text("Sign Up",
            style: TextStyle(fontSize: 16,
                color: kPrimaryColor),
          ),
        ),

      ],
    );
  }
}
