// import 'package:car_rental_app/screens/home_screen/home_screen.dart';
import 'package:car_rental_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:car_rental_app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(),
      //      debugShowCheckedModeBanner: true,
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
