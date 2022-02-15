import 'package:car_rental_app/routes.dart';
import 'package:car_rental_app/screens/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Add this

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyA7ayc948CnRfqcTOkvqo5L_bo3wQO3Vjk",
        appId: "1:887767991985:android:37b485e404d36a49b30490",
        authDomain: "Car Rental App.firebaseapp.com",
        databaseURL: "https://{Car Rental App}.firebaseio.com",
        messagingSenderId: "887767991985",
        projectId: "car-rental-app-86fd7",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
