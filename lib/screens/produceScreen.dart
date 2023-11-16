import 'package:flutter/material.dart';

import 'package:fruit_and_vegetable/classes/produce.dart';

import 'package:fruit_and_vegetable/customs/myappbar.dart';
import 'package:google_fonts/google_fonts.dart';

class ProduceScreen extends StatelessWidget {
  ProduceScreen({required this.obj, super.key});
  Produce obj;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: MyAppBar(Color(int.parse(obj.getHex())), obj.getType()),
        body: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(obj.getImage()), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25)),
              border: Border(
                bottom: BorderSide(
                  color: Colors.black, // Border color
                  width: 7.0, // Border width
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Center(
                child: Text(obj.getName(),
                    style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Color(int.parse(obj.getHex()))),
                    )),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Water: ${obj.getWater()}',
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
              SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Vitamins: ${obj.getVitamins()}',
                    style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
              SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Minerals: ${obj.getMinerals()}',
                    style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
              SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Continents: ${obj.getContinents()}',
                    style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
          )
        ]));
  }
}
