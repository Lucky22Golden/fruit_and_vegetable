import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class WaveContainer extends StatelessWidget {
  WaveContainer({required this.text1, required this.author, super.key});
  String text1;
  String author;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: WaveClip(),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(66, 66, 66, 1), Colors.yellow])),
          child: Column(
            children: [
              SizedBox(height: 110),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text1,
                    style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                        shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0,
                            color: Colors.black,
                          )
                        ])),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Text('by ' + author,
                    style: GoogleFonts.kdamThmor(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ],
          ),
        ));
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, 80.0); // Adjust the starting point

    final firstControlPoint = Offset(size.width / 4, 0.0);
    final firstEndPoint =
        Offset(size.width / 2.25, 20.0); // Adjust the firstEndPoint
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint = Offset(size.width - (size.width / 1.25),
        140.0); // Adjust the secondControlPoint
    final secondEndPoint =
        Offset(size.width, 20.0); // Adjust the secondEndPoint
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
