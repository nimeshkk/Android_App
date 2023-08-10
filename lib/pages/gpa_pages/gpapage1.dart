import 'package:flutter/material.dart';
import 'grade_calculator.dart';

class GpaPage1 extends StatefulWidget {
  @override
  _GpaPage1State createState() => _GpaPage1State();
}

class _GpaPage1State extends State<GpaPage1> {
  String selectedGrade = 'A+';
  int selectedCredits = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 70, 71, 183),
      shadowColor: Color.fromARGB(255, 70, 71, 183),
      title: const Text(
        "Add Courses",
        style: TextStyle(
            fontWeight: FontWeight.w900, fontSize: 30, color: Colors.white),
      ),
    ));
  }
}
