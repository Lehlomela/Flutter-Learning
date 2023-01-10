import 'package:flutter/material.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/material_skeleton.dart';

class MyNavigation {
  Widget? _currentWidget;

  // todo:: If user's not logged in go home
  static push(BuildContext context, Widget widget, String title) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MaterialSkeleton(
              body: widget,
              title: title,
            )));
  }
}
