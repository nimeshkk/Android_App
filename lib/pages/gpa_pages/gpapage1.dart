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
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/gpa11png.png"), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Add the course grade using the following button and select the corresponding GPA credit for each course",
                style: TextStyle(
                  color: Color.fromARGB(255, 97, 68, 184),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "select the grade",
                style: TextStyle(
                  color: Color.fromARGB(255, 64, 2, 114),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            DropdownButton<String>(
              value: selectedGrade,
              onChanged: (newValue) {
                setState(() {
                  selectedGrade = newValue!;
                });
              },
              items: gradePointMap.keys.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "select the corresponding GPA credit for above course",
                style: TextStyle(
                  color: Color.fromARGB(255, 64, 2, 114),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Slider(
              value: selectedCredits.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  selectedCredits = newValue.toInt();
                });
              },
              min: 1,
              max: 5,
              divisions: 4,
              label: selectedCredits.toString(),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Course course = Course(selectedGrade, selectedCredits);
                Navigator.pop(context, course);
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 247, 249, 249), // Set your desired button color
                minimumSize: Size(120, 48),

                // Set the width and height of the button
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Color.fromARGB(255, 93, 7, 223),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
