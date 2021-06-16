import 'package:coffeeshopapp/Home/homepage.dart';
import 'package:coffeeshopapp/Screens/Authenticate/sign_in_anon.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignIn();
  }
}
