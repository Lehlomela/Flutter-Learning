import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText(
      {Key? key,
      required this.text,
      this.maxLines = 100,
      this.fontWeight = FontWeight.w400,
      this.color = Colors.black})
      : super(key: key);

  final String text;
  final int maxLines;
  final FontWeight fontWeight;
  final Color color;

  // final

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          fontSize: 14, wordSpacing: 2.1, fontWeight: fontWeight, color: color),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
