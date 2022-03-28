// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');


  Future updateUserData(String firstname, String lastname, int age,
    String province, String phoneNumber) async {
      return await userCollection.doc(uid).set({
        'firstname': firstname,
        'lastname': lastname,
        'age': age,
        'province': province,
        'phoneNumber': phoneNumber,
        
      });
  }

  Future getUsersData() async {
    List itemsList = [];
    try {
      await userCollection.get().then((querySnapshot) {
        for (var element in querySnapshot.docs) {
          itemsList.add(element.data);
        }
      });
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}