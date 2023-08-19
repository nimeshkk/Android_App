import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';

// Define Faculty pages
class FacultyPage extends StatelessWidget {
  final String facultyName;

  FacultyPage(this.facultyName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(facultyName),
      ),
      body: Center(
        child: Text('Timetable information for $facultyName will be displayed here'),
      ),
    );
  }
}

class Timetable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Table'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Home2()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => FacultyPage('Faculty 1')),
                );
              },
              child: Text('Faculty 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => FacultyPage('Faculty 2')),
                );
              },
              child: Text('Faculty 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => FacultyPage('Faculty 3')),
                );
              },
              child: Text('Faculty 3'),
            ),
          ],
        ),
      ),
    );
  }
}

