import 'package:car_rental_app/screens/home_screen/home_screen.dart';
import 'package:car_rental_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),

};