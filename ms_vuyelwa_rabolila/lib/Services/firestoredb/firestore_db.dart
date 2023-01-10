import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDb {
  var db = FirebaseFirestore.instance;

  getUserCollection() {
    return db.collection('users');
  }

  getTutorCollection() {
    return db.collection('tutor');
  }
}
