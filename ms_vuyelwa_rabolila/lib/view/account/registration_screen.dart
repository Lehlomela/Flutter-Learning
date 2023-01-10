import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/my_appbar.dart';
import 'package:ms_vuyelwa_rabolila/view/account/registration_form.dart';
import 'package:ms_vuyelwa_rabolila/view/account/user_input.dart';

import '../Utils/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final userInput = UserInput();

  @override
  Widget build(BuildContext context) {
             return ClipRect(
              child: Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  color: VeeColors.colorTwo,
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                  child: ListView(children: const [RegistrationForm()]),
                ),
              ));
  }
}
