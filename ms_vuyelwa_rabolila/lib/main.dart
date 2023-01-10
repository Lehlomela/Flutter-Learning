import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/Services/authentication_service.dart';
import 'package:ms_vuyelwa_rabolila/state_management/state_management.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/MyDrawer.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/contants.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/my_appbar.dart';
import 'package:ms_vuyelwa_rabolila/view/account/login_screen.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChangeNotifierProvider(
      create: (context) => StateManagement(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String appTitle = Constants.appName;

    var userAuth = MyAuthentication();

    return MaterialApp(
      title: appTitle,
      home: const Scaffold(
        resizeToAvoidBottomInset: false, // avoid resizing when keypad appears
        appBar: MyAppbar(),
        drawer: MyDrawer(),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget currentWidget =
      const Login(); // widget to display when user clicks on the app

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<StateManagement>(builder: (context, stateManager, child) {
      return stateManager.widget;
    });
  }
}
