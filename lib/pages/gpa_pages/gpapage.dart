import 'package:flutter/material.dart';
import 'gpapage1.dart';
import 'grade_calculator.dart';

class GpaPage extends StatefulWidget {
  @override
  _GpaPageState createState() => _GpaPageState();
}

class _GpaPageState extends State<GpaPage> {
  List<Course> courses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 70, 71, 183),
        shadowColor: Color.fromARGB(255, 70, 71, 183),
        title: const Text(
          "UGC GPA Calculator",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
