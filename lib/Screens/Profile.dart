// @dart=2.9

import 'package:coffeeshopapp/Home/userList.dart';
import 'package:coffeeshopapp/models/userdatabase.dart';
import 'package:coffeeshopapp/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class profile extends StatefulWidget {
  const profile({key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<UserData>>.value(
      value: DatabaseService().users,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.brown[400],
          actions: [

          ],
        ),
        body: UserList(),
      ),
    );
  }
}
