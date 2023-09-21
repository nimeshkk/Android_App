import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';
import 'gpapage.dart';
import 'package:campus_connect_app/pages/gpa_pages/gpapageforeign.dart';

class Gpahome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/gpa9.png",
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            // Image.asset(
            //   "assets/gpa7.png",
            //  fit: BoxFit.cover,
            // ),
            const SizedBox(height: 0),
      
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Welcome to GPA Calculator",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 76, 55),
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
      
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Empower yourself with instant insights into your academic achievements. Get started today and unlock the power of GPA Calculator!",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            //login button
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: const Color.fromARGB(223, 5, 119, 106),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GpaPageforeign()));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Foreign",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16), // Add spacing between the buttons
                    Expanded(
                      child: MaterialButton(
                        color: const Color.fromARGB(223, 5, 119, 106),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GpaPage()));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "UGC",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            //register button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(223, 5, 119, 106),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home2()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 76, 55),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
