import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/Services/authentication_service.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/default_button.dart';
import 'package:ms_vuyelwa_rabolila/view/account/user_input.dart';

import '../Utils/default_forminput.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final UserInput userInput = UserInput();

  final MyAuthentication myAuthentication = MyAuthentication();

  @override
  void dispose() {
    userInput.dispose();
    super.dispose();
  }

  _loginUser() {
    if (_formKey.currentState!.validate()) {
      // ******* VALID **********
      var email = userInput.getEmail();
      var password = userInput.getPassword();


      myAuthentication.loginUser(email, password);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Processing Data $email $password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          userInput.emailInput(),
          userInput.passwordInput(),
          //***************************************************** LOGIN BUTTON ***************************
          Padding(
            padding: const EdgeInsets.all(8),
            child: MyDefaultButton(
              onPressed: _loginUser,
              text: 'Login',
            ),
          )
        ],
      ),
    );
  }
}
