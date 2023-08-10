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
        title: Text('Edit Course'),
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
              decoration: InputDecoration(labelText: 'Course Name'),
              controller: TextEditingController(text: editedCourseName),
            ),
            SizedBox(height: 10),
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
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  editedCredits = int.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Credit Hours'),
              controller: TextEditingController(text: editedCredits.toString()),
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
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
