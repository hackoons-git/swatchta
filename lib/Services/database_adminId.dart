import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterappp/Models/admin_model.dart';


class DatabaseAdmiId{
  
  CollectionReference adminId = Firestore.instance.collection('admin');

  //location list from snapshot
  List<AdminData> _locationListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return AdminData(
        password : doc.data['password'],
        username : doc.data['username'],
      );
    }).toList();
  }

  //get location stream
  Stream<List<AdminData> > get getId {
    return adminId.snapshots()
        .map(_locationListFromSnapshot);
  }

}