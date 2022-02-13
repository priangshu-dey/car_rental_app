import 'package:car_rental_app/screens/home_screen/home_screen.dart';
import 'package:car_rental_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: const Color(0xffF5591F),
                gradient: LinearGradient(
                  colors: [(new Color(0xffF5591F)), (new Color(0xffF2861E))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Image.asset("assets/images/tesla.png"),
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20, top: 10),
                      alignment: Alignment.bottomRight,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE),
                    )
                  ]),
              alignment: Alignment.center,
              child: const TextField(
                cursorColor: Color(0xffF5591F),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Color(0xffF5591F),
                  ),
                  hintText: "Enter Phone Number",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE),
                    )
                  ]),
              alignment: Alignment.center,
              child: const TextField(
                obscureText: true,
                cursorColor: Color(0xffF5591F),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color(0xffF5591F),
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, top: 10),
              padding: const EdgeInsets.only(right: 20, left: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text('Forget Password?'),
                onTap: () => {},
              ),
            ),
            GestureDetector(
              //write code for onclick
              onTap: () => Navigator.pushNamed(context,HomeScreen.routeName),
              child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                padding: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        (new Color(0xffF5591F)),
                        (new Color(0xffF2861E)),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE),
                      )
                    ]),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have Account? "),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      ),
                    },
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Color(0xffF5591F),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
