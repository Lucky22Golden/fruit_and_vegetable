import 'package:flutter/material.dart';

import 'package:fruit_and_vegetable/classes/produce.dart';
import 'package:fruit_and_vegetable/customs/listContainer.dart';
import 'package:fruit_and_vegetable/customs/myappbar.dart';

class VegFruScreen extends StatefulWidget {
  VegFruScreen(
      {required this.list,
      required this.b,
      required this.a,
      required this.title1,
      super.key});
  List<Produce> list;
  Color a;
  Color b;
  String title1;
  @override
  State<VegFruScreen> createState() => _VegFruScreen();
}

class _VegFruScreen extends State<VegFruScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.b,
      appBar: MyAppBar(widget.a, widget.title1),
      body: ListView.builder(
          itemCount: widget.list.length,
          itemBuilder: (context, index) {
            return MyListContainer(obj: widget.list[index], a: widget.a);
          }),
    );
  }
}
