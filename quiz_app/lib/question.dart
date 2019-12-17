import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  //Question({this.questionText}); Named constructor
  Question(this.questionText); //position constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
