import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/Services/authentication_service.dart';
import 'package:ms_vuyelwa_rabolila/main.dart';
import 'package:ms_vuyelwa_rabolila/state_management/state_management.dart';

import '../Utils/colors.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Center verificationForm() {// this is a method
    return Center(
        child: OutlinedButton(
            onPressed: () {
              MyAuthentication.getCurrentUser()?.reload().then((value) {

                //
                var emailVerified =
                    MyAuthentication.getCurrentUser()?.emailVerified ?? false;

                if (emailVerified) {
                  StateManagement.getInstance(context).goHome();
                  //
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Email has been verified')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Email has not been verified. Please check spam.')),
                  );
                }
              });
            },
            child: const Text('Email Address verified')));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        color: VeeColors.colorTwo,
        padding: const EdgeInsets.symmetric( horizontal: 20),
        child: verificationForm(),
      ),
    );
  }
}
