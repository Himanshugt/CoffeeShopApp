// @dart=2.9

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffeeshopapp/models/userdatabase.dart';

class DatabaseService{

  final String uid;
  DatabaseService({this.uid});
  //CollectionReference
  final CollectionReference userDetails=FirebaseFirestore.instance.collection('userDetails');

  Future updateName(String sugars,String name,int strength) async{
    return await userDetails.doc(uid).set({
      'sugars':sugars,
      'name':name,
      'strength':strength,
    });
  }

  //userdata list from snapshot
  List<UserData> _userListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.docs.map((doc){
      return UserData(
        name: doc.get('name'),
        strength: doc.get('strength'),
        sugars: doc.get('sugars'),
      );
    }).toList();
  }

  Stream<List<UserData>> get users {
    return userDetails.snapshots()
      .map(_userListFromSnapshot);
  }

}