import 'package:cloud_firestore/cloud_firestore.dart';

class UserDb {
  static const customer = 'user';

  final _db = FirebaseFirestore.instance;

  final user = <String, dynamic>{'email': '', 'name': ''};

  CollectionReference<Map<String, dynamic>> getUsersRef() {
    return _db.collection(customer);
  }

  addUser(String email, name) {
    Map<String, dynamic> user = {};
    user['name'] = name;
    user['email'] = email;

    var ref = getUsersRef();

    ref.doc(email).set(user).onError((error, stackTrace) =>
        print('in userdb******* ${error}')); // todo:: display error msg
  }

  getUser(String email, String type) {
    _db.collection(type).doc(email);
  }
}
