import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/Services/authentication_service.dart';
import 'package:ms_vuyelwa_rabolila/Services/firestoredb/tutor_db.dart';
import 'package:ms_vuyelwa_rabolila/Services/firestoredb/userdb.dart';
import 'package:ms_vuyelwa_rabolila/view/account/user_input.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final userInput = UserInput();

  @override
  void dispose() {
    userInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          userInput.nameInput(),
          userInput.emailInput(),
          userInput.emailInput(
              labelText: 'Confirm Email Address', confirmation: true),
          userInput.passwordInput(),
          userInput.passwordInput(
              labelText: 'Confirm Password', confirmation: true),

          //********************************************************* REGISTER BUTTON ***************************
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: _registerUser,
              child: const Text('Register'),
            ),
          )
        ],
      ),
    );
  }

  void _registerUser() {
    if (_formKey.currentState!.validate()) {
      print('registering user');
      // ******* VALID **********
      MyAuthentication myAuthentication = MyAuthentication();
      var result = _createUser(
          userInput.getEmail(), userInput.getPassword(), userInput.getName());

      result.then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          // StateManagement().updateDisplayWidget(displayWidget)
          const SnackBar(content: Text('user created successfully ')),
        );
      });
    }
  }

  Future<Map<String, String>> _createUser(
      String email, String password, String displayName) async {
    var responseMsg = '';

    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        value.user
            ?.updateDisplayName(displayName)
            .then((value2) => value.user?.sendEmailVerification());

        ///
        if (email == 'lehlomela.dev@gmail.com' ||
            email.compareTo('rabolilavuyelwa@gmail.com') == 0) {
          TutorDb().saveTutor(email, displayName);
          //
        } else {
          UserDb().addUser(email, displayName);
        }
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        responseMsg = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        responseMsg = 'The account already exists for that email.';
      }
    } catch (e) {
      responseMsg = 'Something went wrong. please retry';
    }

    return {'status': responseMsg};
  }
}
