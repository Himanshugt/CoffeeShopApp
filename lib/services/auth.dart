// @dart=2.9

import 'package:coffeeshopapp/models/My_User.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on FirebaseUser
  MyUser _userFromFireBaseUser(User user){
    return user != null ? MyUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<MyUser> get stuser{
    return _auth.authStateChanges()
        .map(_userFromFireBaseUser);
  }


  //sign in anon
  Future signInAnon() async{
    try{
      UserCredential result=await _auth.signInAnonymously();
      User user=result.user;
      return _userFromFireBaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }
  //sign with email and password

  //register with email and password

  //sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}