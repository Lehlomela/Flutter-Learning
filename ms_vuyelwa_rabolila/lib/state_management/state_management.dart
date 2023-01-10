import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:ms_vuyelwa_rabolila/Services/authentication_service.dart';
import 'package:ms_vuyelwa_rabolila/view/account/login_screen.dart';
import 'package:ms_vuyelwa_rabolila/view/account/verify_email_screen.dart';
import 'package:provider/provider.dart';

import '../View/home/vuyelwa_homepage.dart';

class StateManagement extends ChangeNotifier {
  final _auth = MyAuthentication();

  Widget _widget = const Login();

  Widget get widget => _widget;

  static User? currentUser;

  StateManagement() {
    _checkCurrentUser();
  }

  static StateManagement getInstance(context) {
    return Provider.of<StateManagement>(context, listen: false);
  }

  void goHome(){
    updateDisplayWidget(const VuyelwaHomePage());
  }

  updateDisplayWidget(Widget displayWidget) {
    _widget = displayWidget;
    notifyListeners();
  }

  _checkCurrentUser() {
    _auth.authenticationStateChanged().listen((User? user) {
      currentUser = user;

      if (user != null) {
        if (!user.emailVerified) {
          updateDisplayWidget(const VerifyEmail());
        } else {
          // user logged in and email verified
          // _takeToHomePage();
          updateDisplayWidget(const VuyelwaHomePage());
        }
      } else {
        // if user is not registered or logged out
        updateDisplayWidget(const Login());
      }
    });
  }

}
