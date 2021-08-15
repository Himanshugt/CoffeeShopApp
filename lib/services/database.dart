// @dart=2.9

import 'package:cloud_firestore/cloud_firestore.dart';

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

  Stream<QuerySnapshot> get users {
    return userDetails.snapshots();
  }

}