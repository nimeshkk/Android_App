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
        backgroundColor: const Color.fromARGB(255, 70, 71, 183),
        shadowColor: const Color.fromARGB(255, 70, 71, 183),
        title: const Text(
          "UGC GPA Calculator",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 30, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/gpa10.png"), // Replace with your image asset path
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
                          color: Color.fromARGB(255, 4, 38, 116),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Grade: ${courses[index].grade}\nCredit for course: ${courses[index].credits}',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 4, 38, 116),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
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
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 70, 71, 183),
                fixedSize: const Size(
                    200, 40), // Set the width and height of the button
              ),
              child: const Text(
                'Add Course',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
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
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 70, 71, 183),
                fixedSize: const Size(
                    200, 40), // Set the width and height of the button
              ),
              child: const Text(
                'Calculate GPA',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
