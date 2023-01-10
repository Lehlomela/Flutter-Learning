import 'package:flutter/material.dart';

import '../Text/VuyelwaText.dart';
import 'colors_2.dart';

class MyDefaultButton extends StatefulWidget {
  const MyDefaultButton(
      {Key? key, required this.text, this.active = false, this.onPressed})
      : super(key: key);

  final String text;
  final bool active;
  final Function()? onPressed;

  @override
  State<MyDefaultButton> createState() => _MyDefaultButtonState();
}

class _MyDefaultButtonState extends State<MyDefaultButton> {
  Color pressedColor = VeeColors2.colorThree;

  //defaults
  var height = 35.0;
  var elevation = 2.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        margin: const EdgeInsets.only(top: 8, left: 80, right: 80),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: MaterialButton(
            // Disabled
            disabledColor: VeeColors2.colorTwo,
            disabledElevation: elevation,
            //
            shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(300))),
            //
            height: height,
            highlightColor: VeeColors2.colorFour,
            color: VeeColors2.colorOne,
            onPressed: widget.onPressed,
            // enableFeedback: false,

            child: MyText(text: widget.text)));
  }
}
