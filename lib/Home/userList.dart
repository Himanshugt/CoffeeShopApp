import 'package:coffeeshopapp/models/userdatabase.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override

  Widget build(BuildContext context) {

    final users=Provider.of<List<UserData>>(context);

    users.forEach((e) {
      print(e.name);
      print(e.sugars);
      print(e.strength);
    });
    return Container();
  }
}
