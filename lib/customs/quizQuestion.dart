import 'package:flutter/material.dart';

class MyQuizContainer extends StatefulWidget {
  MyQuizContainer({super.key});

  @override
  State<MyQuizContainer> createState() => _MyQuizContainerState();
}

class _MyQuizContainerState extends State<MyQuizContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.yellow,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.black),
    );
  }
}
