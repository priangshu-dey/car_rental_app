import 'package:car_rental_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:car_rental_app/screens/home_screen/home_screen.dart';
import 'package:car_rental_app/screens/login_screen/components/login_form.dart';
import 'package:car_rental_app/screens/login_screen/login_screen.dart';
import 'package:car_rental_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:car_rental_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  LoginScreen.routeName: (context)=> LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  RegistrationScreen.routeName: (context)=>RegistrationScreen(),

  // SignUpScreen.routeName: (context)=> SignUpScreen(),



};