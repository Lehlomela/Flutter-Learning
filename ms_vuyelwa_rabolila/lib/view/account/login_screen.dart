import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/state_management/state_management.dart';
import 'package:ms_vuyelwa_rabolila/view/account/login_form.dart';
import 'package:ms_vuyelwa_rabolila/view/account/registration_screen.dart';

import '../Utils/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  _registrationScreen(){
    StateManagement.getInstance(context).updateDisplayWidget(const RegistrationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
        child: Card(
            color: VeeColors.colorTwo,
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: LoginForm()),
                RichText(
                  text: TextSpan(
                      text: 'Are you new? ',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        WidgetSpan(
                            child: GestureDetector(
                                onTap: _registrationScreen,
                                child: const Text('Create an account',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ))))
                      ]),
                ),
              ],
            )));
  }
}
