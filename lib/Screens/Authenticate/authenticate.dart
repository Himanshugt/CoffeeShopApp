import 'package:coffeeshopapp/Screens/Authenticate/register_with_email.dart';
import 'package:coffeeshopapp/Screens/Authenticate/sign_in_anon.dart';
import 'package:coffeeshopapp/Screens/Authenticate/signinemail.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignInEmail(toggleView:  toggleView);
    } else {
      return RegisterWithEmail(toggleView:  toggleView);
    }
  }
}

