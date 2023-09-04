import 'package:flutter/material.dart';
import 'grade_calculator.dart';

class GpaPage1 extends StatefulWidget {
  @override
  _GpaPage1State createState() => _GpaPage1State();
}

class _GpaPage1State extends State<GpaPage1> {
  String selectedGrade = 'A+';
  int selectedCredits = 1;
  String courseName = ''; // Added course name variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: const Text(
          "Add Courses",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Color.fromARGB(255, 2, 76, 55)),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/gpa11png.png"), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Add the course grade using the following button and select the corresponding GPA credit for each course",
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 76, 55),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Enter course name",
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 76, 55),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // coures name
            Container(
              width: 300, // Set the desired width
              height: 50, // Set the desired height
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    courseName = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: "Course Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "select the grade",
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 76, 55),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
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

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "select the corresponding GPA credit for above course",
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 76, 55),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // const SizedBox(height: 16),
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
            const SizedBox(
              height: 30,
            ),
            /*ElevatedButton(
              onPressed: () {
                Course course =
                    Course(selectedGrade, selectedCredits, courseName);
                Navigator.pop(context, course);
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    223, 5, 119, 106), // Set your desired button color
                minimumSize: const Size(120, 48),

                // Set the width and height of the button
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),*/
            ElevatedButton(
              onPressed: () {
                Course course =
                    Course(selectedGrade, selectedCredits, courseName);
                Navigator.pop(context, course);
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(223, 5, 119, 106),
                minimumSize: const Size(120, 48),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'ADD',
                  style: TextStyle(
                    color: Color.fromARGB(255, 251, 248, 248),
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
