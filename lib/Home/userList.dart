import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override

  Widget build(BuildContext context) {

    final user=Provider.of<QuerySnapshot>(context);

    for(var doc in user.docs){
      print(doc.data());
    }
    return Container();
  }
}
