import 'package:flutter/material.dart';

class MyFormInput extends StatelessWidget {
  const MyFormInput(
      {Key? key,
      required this.icon,
      required this.labelText,
      this.validator,
      this.obscureText = false,
      this.autoFocus = false,
      this.controller,
      this.maxLength = TextField.noMaxLength})
      : super(key: key);

  final bool obscureText;
  final IconData icon;
  final String labelText;
  final bool autoFocus;
  final TextEditingController? controller;

  final int? maxLength;
  final validator;

  @override
  Widget build(BuildContext context) {
    var defaultPadding = 8.0;

    return Padding(
        padding: EdgeInsets.symmetric(vertical: defaultPadding),
        child: TextFormField(
          obscureText: obscureText,
          validator: validator,
          autofocus: autoFocus,
          controller: controller,
          maxLength: maxLength,

          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              labelText: labelText,
              counterText: '',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(200))),
        ));
  }
}
