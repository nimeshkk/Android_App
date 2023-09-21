import 'package:flutter/material.dart';
import 'grade_calculator.dart';

class EditCoursePage extends StatefulWidget {
  final Course course;

  EditCoursePage({required this.course});

  @override
  _EditCoursePageState createState() => _EditCoursePageState();
}

class _EditCoursePageState extends State<EditCoursePage> {
  String editedCourseName = '';
  int editedCredits = 0;
  String editedGrade = 'A+';

  @override
  void initState() {
    editedCourseName = widget.course.courseName;
    editedCredits = widget.course.credits;
    editedGrade = widget.course.grade;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: const Text(
          "Edit course",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Color.fromARGB(255, 2, 76, 55)),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  editedCourseName = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Course Name',
                labelStyle: TextStyle(
                  color: Color.fromARGB(
                      255, 2, 76, 55), // Change the color to your desired color
                  fontSize: 24,
                  fontWeight: FontWeight
                      .w900, // Change the font size to your desired size
                ),
              ),
              controller: TextEditingController(text: editedCourseName),
            ),
            SizedBox(height: 20),
            // Add more fields for editing credits and grade here
            DropdownButton<String>(
              value: editedGrade,
              onChanged: (newValue) {
                setState(() {
                  editedGrade = newValue!;
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
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                setState(() {
                  editedCredits = int.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Credit Hours',
                labelStyle: TextStyle(
                  color: Color.fromARGB(
                      255, 2, 76, 55), // Change the color to your desired color
                  fontSize: 24,
                  fontWeight: FontWeight
                      .w900, // Change the font size to your desired size
                ),
              ),
              controller: TextEditingController(text: editedCredits.toString()),
            ),
      
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Course editedCourse = Course(
                  editedGrade,
                  editedCredits,
                  editedCourseName,
                );
                Navigator.pop(context, editedCourse);
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    223, 5, 119, 106), // Set your desired button color
                minimumSize: const Size(120, 48),
      
                // Set the width and height of the button
              ),
              child: const Text(
                'Save Changes',
                style: TextStyle(
                  color: Color.fromARGB(255, 244, 243, 247),
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
