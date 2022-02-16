
import 'package:car_rental_app/routes.dart';
import 'package:car_rental_app/screens/home_screen/home_screen.dart';
import 'package:car_rental_app/screens/login_screen/login_screen.dart';
import 'package:car_rental_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:car_rental_app/screens/splash_screen/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:';

Future<void> main() async {
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
      home: InitializerWidget(),
      // initialRoute: SplashScreen.routeName,
      // routes: routes,
    );
  }
}



class InitializerWidget extends StatefulWidget {
  const InitializerWidget({Key? key}) : super(key: key);

  @override
  _InitializerWidgetState createState() => _InitializerWidgetState();
}

class _InitializerWidgetState extends State<InitializerWidget> {
  FirebaseAuth? _auth;
  User? _user;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _auth = FirebaseAuth.instance;
    _user = _auth?.currentUser;
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    )
        : _user == null
        ? const SplashScreen()
        : const HomeScreen();
  }
}
