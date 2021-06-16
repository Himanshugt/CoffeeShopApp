// @dart=2.9

import 'package:coffeeshopapp/Screens/wrapper.dart';
import 'package:coffeeshopapp/models/My_User.dart';
import 'package:coffeeshopapp/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StreamProvider<MyUser>.value(
    value: AuthService().stuser,
    child: MaterialApp(
      home: Wrapper(),
    ),
  ));
}

