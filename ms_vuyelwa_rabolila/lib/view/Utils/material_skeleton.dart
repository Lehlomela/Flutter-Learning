import 'package:flutter/material.dart';

import 'MyDrawer.dart';
import 'my_appbar.dart';

class MaterialSkeleton extends StatefulWidget {
  const MaterialSkeleton({Key? key, required this.body, required this.title})
      : super(key: key);

  final Widget body;
  final String title;

  @override
  State<MaterialSkeleton> createState() => _MaterialSkeletonState();
}

class _MaterialSkeletonState extends State<MaterialSkeleton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        resizeToAvoidBottomInset: false, // avoid resizing when keypad appears
        appBar: const MyAppbar(),
        drawer: const MyDrawer(),
        body: widget.body,
      ),
    );
  }
}
