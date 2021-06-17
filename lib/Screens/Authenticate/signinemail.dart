// @dart=2.9

import 'package:coffeeshopapp/services/auth.dart';
import 'package:flutter/material.dart';

class SignInEmail extends StatefulWidget {
  final Function toggleView;
  SignInEmail({ this.toggleView });

  @override
  _SignInEmailState createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {

  String email = '';
  String password = '';

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
      body: ListView(
        children: [
          Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
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
                      print(email);
                      print(password);
                    }
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}