import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:ms_vuyelwa_rabolila/Services/firestoredb/userdb.dart';

class MyAuthentication extends ChangeNotifier {
  User? user;

  final userDb = UserDb();

  Stream<User?> authenticationStateChanged() {
    return FirebaseAuth.instance.authStateChanges();
  }


  Future<String> loginUser(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        return 'user not found';
      } else if (ex.code == 'wrong-password') {
        return 'wrong password';
      }
    }

    return 'Login Successful';
  }

  static User? getCurrentUser() {
    if (FirebaseAuth.instance.currentUser != null) {
      return FirebaseAuth.instance.currentUser;
    }

    return null;
  }



  static void reloadUser() async {
    if (getCurrentUser() != null) {
      getCurrentUser()?.reload();
    }
  }

  signOutUser() {
    FirebaseAuth.instance.signOut();
  }
}
