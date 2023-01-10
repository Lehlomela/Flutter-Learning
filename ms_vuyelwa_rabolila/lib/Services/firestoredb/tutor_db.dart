import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ms_vuyelwa_rabolila/state_management/state_management.dart';

class TutorDb {
  static const tutor = 'tutors';
  final _db = FirebaseFirestore.instance;

  void addSubject(String subjectName, int grade) {
    var user = StateManagement.currentUser;

    if (user != null) {
      _getTutorRef(user.email).get().then((value) {
        //
        print(value.data());
        _getTutorsRef()
            .doc(user.email)
            .collection('subjects')
            .doc(subjectName)
            .set({'subject': subjectName, 'grade': grade}).then((value) {
          print('saved');
        }).onError((error, stackTrace) {
          print('subject could not be saved');
        });
      }).onError((error, stackTrace) {
        print('could not save subject $error');
      });
      //
    } else {
      print('User not logged in');
    }
  }

  CollectionReference<Map<String, dynamic>> _getTutorsRef() {
    return _db.collection(tutor);
  }

  saveTutor(String email, String name) {
    Map<String, dynamic> tutor = {};
    tutor['name'] = name;
    tutor['email'] = email;
    //
    tutor['admin'] = true;
    var ref = _getTutorsRef();

    ref.doc(email).set(tutor).onError((error, stackTrace) =>
        print('in userdb******* ${error}')); // todo:: display error msg
  }

  DocumentReference<Map<String, dynamic>> _getTutorRef(String? tutorEmail) {
    return _db.collection(tutor).doc(tutorEmail);
  }
}
