import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/Services/authentication_service.dart';
import 'package:ms_vuyelwa_rabolila/navigation/MyNavigation.dart';
import 'package:ms_vuyelwa_rabolila/state_management/state_management.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/colors_2.dart';
import 'package:ms_vuyelwa_rabolila/view/subject/admin/add_subject.dart';
import 'package:ms_vuyelwa_rabolila/view/subject/admin/add_topic.dart';
import 'package:provider/provider.dart';

import '../Text/VuyelwaText.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget drawerItem(String name, {Function()? onTap}) {
    return Card(
        margin: const EdgeInsets.symmetric(vertical: 1),

        child: ListTile(
          onTap: onTap,
          dense: true,
          tileColor: VeeColors2.monochromaticColorColorTwo,
          title: MyText(text: name),
        ));
  }

  @override
  Widget build(BuildContext context) {
    StateManagement stateManagement = Provider.of<StateManagement>(context);
    return Drawer(
      backgroundColor: VeeColors2.colorTwo,
      semanticLabel: 'App Drawer',
      child: ListView(
        children: [
          drawerItem('MyAccount', onTap: null),
          drawerItem('Add Subject', onTap: () {
            Navigator.pop(context);
            MyNavigation.push(context, const AddSubject(), 'Add Subject');
            // stateManagement.changeWidgetDisplay(const AddSubject());
          }),
          drawerItem('Logout', onTap: () {
            MyAuthentication auth = MyAuthentication();
            auth.signOutUser();
          })
        ],
      ),
    );
  }
}
