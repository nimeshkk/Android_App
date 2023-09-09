import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';

import 'Business.dart';
import 'Computing.dart';
import 'Engineering.dart';

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
        child: Text(
            'Timetable information for $facultyName will be displayed here'),
      ),
    );
  }
}

class Timetable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Time Table',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Color.fromARGB(255, 2, 76, 55),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back01.png'),

            // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 250),
              Text(
                'Select a Faculty:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),
                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
// =======
//                      Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),
//                     minimumSize: Size(300, 50),
//                     shape: RoundedRectangleBorder(
// >>>>>>> main
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),

                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => COMPUTING()),
                  );
                },
                child: Text(
                  'COMPUTING',
                  style: TextStyle(

                      color: Colors.white,
// =======
//                       color: const Color.fromARGB(255, 255, 255, 255),
// >>>>>>> main
                      fontSize: 18,
                      fontWeight: FontWeight.bold), // Set text color
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),
// =======
//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),
// >>>>>>> main
                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => BUSINESS()),
                  );
                },
                child: Text(
                  'BUSINESS',
                  style: TextStyle(

                      color: Colors.white,
// =======
//                       color: const Color.fromARGB(255, 255, 255, 255),
// >>>>>>> main
                      fontSize: 18,
                      fontWeight: FontWeight.bold), // Set text color
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,

                  backgroundColor:
                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),
                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
// =======
//                    backgroundColor:
//                      Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),
//                     minimumSize: Size(300, 50),
//                     shape: RoundedRectangleBorder(
// >>>>>>> main
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),

                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ENGINEERING()),
                  );
                },
                child: Text(
                  'ENGINEERING',
                  style: TextStyle(

                      color: Colors.white,
// =======
//                       color: const Color.fromARGB(255, 255, 255, 255),
// >>>>>>> main
                      fontSize: 18,
                      fontWeight: FontWeight.bold), // Set text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
