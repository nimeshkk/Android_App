import 'package:flutter/material.dart';
import 'gpapage1.dart';
import 'grade_calculator.dart';
import 'edit_course_page.dart';

class GpaPage extends StatefulWidget {
  @override
  _GpaPageState createState() => _GpaPageState();
}

class _GpaPageState extends State<GpaPage> {
  List<Course> courses = [];

  // Add editCourse function
  Future<void> editCourse(Course course, int index) async {
    final editedCourse = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditCoursePage(course: course),
      ),
    );
    if (editedCourse != null) {
      setState(() {
        courses[index] = editedCourse;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: const Text(
          "UGC GPA Calculator",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Color.fromARGB(255, 2, 76, 55)
              ),
        ),
        
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/gpa10.png"
                ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      'Course: ${courses[index].courseName}', // Display course name
                      style: const TextStyle(
                          color: Color.fromARGB(255, 32, 32, 32),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Grade: ${courses[index].grade}\nCredit for course: ${courses[index].credits}',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 18, 19, 19),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () => editCourse(courses[index], index),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              courses.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            MaterialButton(
              color: const Color.fromARGB(223, 5, 119, 106),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GpaPage1()),
                );
                if (result != null) {
                  setState(() {
                    courses.add(result);
                  });
                }
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "ADD COURSES",
                  style: TextStyle(
                    color: Color.fromARGB(255, 251, 248, 248),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: 20), // Add top margin to adjust the position
              child: MaterialButton(
                color: const Color.fromARGB(223, 5, 119, 106),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                onPressed: () {
                  double gpa = calculateGpa(courses);
                  String gpaMessage = getGpaMessage(gpa);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('GPA Result'),
                        content: Text('Your GPA is: $gpa\n$gpaMessage'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'CALCULATE GPA',
                    style: TextStyle(
                      color: Color.fromARGB(255, 251, 248, 248),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

