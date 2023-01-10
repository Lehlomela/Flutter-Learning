import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_vuyelwa_rabolila/view/Utils/colors.dart';

class Heading extends StatelessWidget {
  const Heading(
      {Key? key,
      required this.heading,
      this.fontSize = 34,
      this.verticalMargin = 8, this.color = Colors.black})
      : super(key: key);

  final String heading;
  final double fontSize;
  final double verticalMargin;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: verticalMargin),
        child: Text(
          heading,
          style: GoogleFonts.lobsterTwo(
              fontSize: fontSize, fontWeight: FontWeight.w300, color: color),
        ));
  }
}
