// @dart=2.9


import 'package:coffeeshopapp/models/userdatabase.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserTile extends StatelessWidget {
  final UserData user;

  UserTile({this.user});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20,0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.brown[user.strength]
          ),
          title: Text(user.name),
          subtitle: Text('Takes ${user.sugars} sugar(s)'),
        ),
      ),
    );
  }
}
