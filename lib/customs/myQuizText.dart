import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MyTextQuiz extends StatelessWidget {
  MyTextQuiz({required this.text1, super.key});

  String text1;

  @override
  Widget build(BuildContext context) {
    return Text(
      text1,
      style: GoogleFonts.poppins(color: Colors.yellow, fontSize: 20),
    );
  }
}
