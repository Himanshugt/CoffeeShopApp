// @dart=2.9

import 'package:coffeeshopapp/services/auth.dart';
import 'package:coffeeshopapp/services/my_flutter_app_icons.dart';
import 'package:coffeeshopapp/shared/constants.dart';
import 'package:flutter/material.dart';
import '';

class SignInEmail extends StatefulWidget {
  final Function toggleView;
  SignInEmail({ this.toggleView });

  @override
  _SignInEmailState createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.orange[400],
            ),
            onPressed: () => widget.toggleView(),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 50.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email'),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                  color: Colors.pink[400],
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if(_formKey.currentState.validate()){
                      dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                      if(result==null){
                        setState(() {
                          error = 'COULD NOT SIGN IN WITH THOSE CREDENTIALS';
                        });
                      }
                    }
                  }
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              // SizedBox(height: 12.0),
              // IconButton(
              //   onPressed: () async{
              //     dynamic result=_auth.googleSignIn();
              //     if(result==null){
              //       print('error signing in');
              //     }
              //     else{
              //       print('signed in');
              //       print(result.uid);
              //     }
              //   },
              //   icon: Icon(
              //     Icons.alternate_email_sharp,
              //   ),
              // )
            ],
          ),
        ),
      ),

    );
  }
}
