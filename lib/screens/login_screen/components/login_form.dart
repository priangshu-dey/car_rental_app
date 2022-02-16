
import 'package:car_rental_app/components/custom_surfix_icon.dart';
import 'package:car_rental_app/components/default_button.dart';
import 'package:car_rental_app/components/form_error.dart';
import 'package:car_rental_app/constants.dart';
import 'package:car_rental_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:car_rental_app/screens/home_screen/home_screen.dart';
import 'package:car_rental_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../authentication.dart';


class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late  String email;
  late  String password;
  bool remember = false;

  //controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController =new TextEditingController();

  //firebase

  final _auth =FirebaseAuth.instance;



  final List<String> errors = [];
  void addError({required String error}){
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}){
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

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
          Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [

                  buildEmailFormField(),
                  const SizedBox(height: 30,width: 20,),
                  buildPasswordFormField(),
                  const SizedBox(height: 30,width: 20,),
                  FormError(errors: errors,),
                  const SizedBox(height: 30,width: 20,),
                  Row(
                    children: [
                      Checkbox(
                          value: remember,
                          activeColor: kPrimaryColor,
                          onChanged: (value){
                            setState(() {
                              remember = value!;
                            });
                          }),
                      Text('Remeber Me'),
                      Spacer(),
                      GestureDetector(
                        onTap:  () => Navigator.pushNamed(
                            context, ForgotPasswordScreen.routeName),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
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
                                builder: (context) => RegistrationScreen(),
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
                  ),
                  SizedBox(height: 15,),
                  DefaultButton(
                      text: "Continue",
                      press: (){

                        signIn(emailController.text, passwordController.text);

                        // if (_formKey.currentState!.validate()){
                        //   _formKey.currentState!.save();
                        //   //if all are valid then go to success screen
                        //   Navigator.pushNamed(context, HomeScreen.routeName);
                        // }
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
     controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {emailController.text  = value!;},
      onChanged: (value){
        if (value.isNotEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
        }else if(
        !emailValidatorRegExp.hasMatch(value) &&  !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });

        }
        return;
      },
      validator: (value){
        if (value!.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        }else if(
        !emailValidatorRegExp.hasMatch(value) &&  !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      onSaved: (value){passwordController.text = value!;},
      onChanged: (value){
        if (value.isNotEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        }else if(value.length >= 8 &&  !errors.contains(kShortPassError)){
          setState(() {
            errors.remove(kShortPassError);
          });

        }
        return null;
      },

      validator: (value){
        if (value!.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        }else if(value.length < 0 &&  !errors.contains(kShortPassError)){
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration:const InputDecoration(
        labelText: "Password",
        hintText: "Enter your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }
  void signIn(String email, String password)async{
    if(_formKey.currentState!.validate()){
      await _auth
          .signInWithEmailAndPassword(email: email, password:password)
          .then((uid) =>{
            Fluttertoast.showToast(msg: "LoginSuccessful"),
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen())),

      }).catchError((e)
          {
            Fluttertoast.showToast(msg: e!.message);
          });
    }
  }
}







