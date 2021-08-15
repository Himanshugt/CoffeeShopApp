
import 'package:coffeeshopapp/Home/homepage.dart';
import 'package:coffeeshopapp/Screens/Authenticate/authenticate.dart';
import 'package:coffeeshopapp/Screens/Authenticate/sign_in_anon.dart';
import 'package:coffeeshopapp/models/My_User.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user=Provider.of<MyUser>(context);

    if(user==null){
      return Authenticate();
    }
    else {
      return HomePage();
    }
  }
}
