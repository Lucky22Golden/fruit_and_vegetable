import 'package:flutter/material.dart';

import 'package:fruit_and_vegetable/classes/produce.dart';
import 'package:fruit_and_vegetable/screens/produceScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListContainer extends StatelessWidget {
  Produce obj;
  Color a;
  MyListContainer({required this.obj, required this.a, super.key});

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
        height: 120,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Color.fromRGBO(141, 110, 99, 1),
            ),
            borderRadius: BorderRadius.circular(20),
            color: a,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(76, 82, 73, 1),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
        child: Row(children: [
          SizedBox(
            width: 30,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.orange,
                width: 4.0,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 40,
              backgroundImage: AssetImage(obj.getImage()),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            obj.getName(),
            style: GoogleFonts.kdamThmor(
                textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow)),
          ),
        ]),
      ),
    );
  }
}
