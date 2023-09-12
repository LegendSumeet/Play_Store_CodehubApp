import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import the google_fonts library

class CustomFontText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  const CustomFontText({
    Key? key,
    required this.text,
    this.style = const TextStyle(),
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ).merge(style),
    );
  }
}
