import 'package:flutter/material.dart';

import 'package:fruit_and_vegetable/classes/produce.dart';
import 'package:fruit_and_vegetable/screens/produceScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteContainer extends StatelessWidget {
  Produce obj;
  FavoriteContainer({required this.obj, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProduceScreen(
                  obj: obj,
                )));
      },
      child: Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Color.fromRGBO(141, 110, 99, 1),
            ),
            borderRadius: BorderRadius.circular(20),
            color: Color(int.parse(obj.getHex())),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(76, 82, 73, 1),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: Image.asset(
                        obj.getImage(),
                        fit: BoxFit.cover,
                      )))),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: Center(
                  child: Text(
                obj.getName(),
                style: GoogleFonts.josefinSans(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
              height: 50,
            ),
          )
        ]),
      ),
    );
  }
}
