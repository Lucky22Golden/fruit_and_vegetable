import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_and_vegetable/customs/favoriteContainer.dart';
import 'package:fruit_and_vegetable/customs/myappbar.dart';
import 'package:fruit_and_vegetable/customs/mydrawer.dart';
import 'package:fruit_and_vegetable/customs/waveContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_and_vegetable/classes/produce.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Produce> produceList = [];

  final controller = PageController(
    initialPage: 2,
    viewportFraction: 0.8,
  );

  Future<void> loadData() async {
    List<Produce> data = await getData();
    setState(() {
      produceList = data;
    });
  }

  Future<List<Produce>> getData() async {
    String jsonString =
        await rootBundle.loadString('assets/listfruitvegetable.json');

    // Parse JSON and convert to a List of Produce objects
    Map<String, dynamic> jsonData = json.decode(jsonString);
    List<dynamic> produceJsonList = jsonData['produce'];

    return produceJsonList.map((item) => Produce.fromJson(item)).toList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(Colors.yellow, 'Fruits and Vegetables'),
      drawer: MyDrawer(list: produceList),
      body: Column(children: [
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Out favorite fruits and vegetables!',
              style: GoogleFonts.dancingScript(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
            ),
          )),
        ),
        Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
                controller: controller,
                itemCount:
                    produceList.where((produce) => produce.getFav()).length,
                itemBuilder: ((context, index) {
                  final favoriteProduceList =
                      produceList.where((produce) => produce.getFav()).toList();
                  return FavoriteContainer(
                    obj: produceList[index],
                  );
                }))),
        Spacer(),
        WaveContainer(
            text1:
                'We should all be eating fruits and vegetables as if our lives depend on it - becaus they do.',
            author: 'Michael Gregger')
      ]),
    );
  }
}
