import 'package:flutter/material.dart';

import 'package:fruit_and_vegetable/classes/produce.dart';
import 'package:fruit_and_vegetable/screens/quiz.dart';

import 'package:fruit_and_vegetable/screens/vegfruscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({required this.list, super.key});
  List<Produce> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black, Colors.yellow])),
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            'Menu',
            style: GoogleFonts.pacifico(
                color: Colors.yellow[500],
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ListTile(
          title: const Text('Fruit',
              style: TextStyle(
                  color: Color.fromRGBO(255, 238, 88, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          onTap: () {
            List<Produce> fruitsList =
                list.where((produce) => produce.getType() == 'Fruit').toList();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => VegFruScreen(
                    list: fruitsList,
                    title1: 'Fruit',
                    a: Color.fromRGBO(229, 57, 53, 1),
                    b: Color.fromARGB(255, 252, 68, 68))));
          },
        ),
        SizedBox(
          height: 5,
        ),
        ListTile(
          title: const Text('Vegetables',
              style: TextStyle(
                  color: Color.fromRGBO(255, 238, 88, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          onTap: () {
            List<Produce> fruitsList = list
                .where((produce) => produce.getType() == 'Vegetable')
                .toList();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => VegFruScreen(
                    list: fruitsList,
                    title1: 'Vegetables',
                    a: Color.fromRGBO(78, 52, 46, 1),
                    b: Color.fromRGBO(205, 95, 59, 1))));
          },
        ),
        SizedBox(
          height: 5,
        ),
        ListTile(
          title: const Text('Quiz',
              style: TextStyle(
                  color: Color.fromRGBO(255, 238, 88, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyQuiz()));
          },
        ),
      ]),
    );
  }
}
