import 'package:coffeeshopapp/models/userdatabase.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'userTile.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override

  Widget build(BuildContext context) {

    final user=Provider.of<List<UserData>>(context);

    user.forEach((e) {
      print(e.name);
      print(e.sugars);
      print(e.strength);
    });
    return ListView.builder(
      itemCount: user.length,
      itemBuilder: (context,index){
        return UserTile(user: user[index]);
      }
    );
  }
}
