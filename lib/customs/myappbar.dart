import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends AppBar {
  MyAppBar(Color a, String t)
      : super(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Color.fromRGBO(66, 66, 66, 1), a])),
          ),
          title: Text(
            t,
            style: GoogleFonts.pacifico(color: Colors.yellow[500]),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20), // Adjust the radius as needed
            ),
          ),
        );
}
