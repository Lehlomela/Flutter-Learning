import 'package:flutter/material.dart';
import '../Utils/default_forminput.dart';

class UserInput {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final confirmedEmailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmedPasswordController = TextEditingController();

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please provide password';
    }
    if (password.length < 8) {
      return 'password should be 8 or more characters';
    }
    return null;
  }

  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please provide email address';
    }

    var emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+")
        .hasMatch(email); // validating Email

    if (!emailValid) {
      return 'Email address is not valid';
    }

    return null;
  }

  nameInput() {
    return MyFormInput(
      icon: Icons.account_circle_outlined,
      controller: nameController,
      labelText: 'FirstName LastName',
      validator: (String? names) {
        if (names == null || names.isEmpty) {
          return 'Please provide name and surname';
        }
      },
    );
  }

  passwordInput({labelText = 'Password', bool confirmation = false}) {
    return MyFormInput(
        // ******************************************************** PASSWORD ************************
        icon: Icons.password,
        labelText: labelText,
        controller:
            confirmation ? confirmedPasswordController : passwordController,
        obscureText: true,
        validator: (String? password) {
          if (confirmation) {
            if (getPassword().compareTo(_getConfirmedPassword()) != 0) {
              return 'Passwords do not match';
            }

            return null;
          }

          return validatePassword(password);
        });
  }

  emailInput({labelText = 'Email', bool confirmation = false}) {
    return MyFormInput(
        // ************************************************** EMAIL ADDRESS *************************
        icon: Icons.email,
        labelText: labelText,
        controller: confirmation ? confirmedEmailController : emailController,
        validator: (String? email) {
          if (confirmation) {
            if (getEmail().compareTo(_getConformedEmail()) != 0) {
              return 'Email Addresses do not match';
            }

            return null;
          }

          return validateEmail(email);
        });
  }

  String getName() {
    return nameController.text;
  }

  String getPassword() {
    return passwordController.text;
  }

  String _getConfirmedPassword() {
    return confirmedPasswordController.text;
  }

  String getEmail() {
    return emailController.text;
  }

  String _getConformedEmail() {
    return confirmedEmailController.text;
  }

  dispose() {
    nameController.dispose();
    emailController.dispose();
    confirmedEmailController.dispose();
    passwordController.dispose();
    confirmedPasswordController.dispose();
  }
}
