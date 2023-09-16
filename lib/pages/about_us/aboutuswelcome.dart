import 'package:campus_connect_app/pages/about_us/aboutcontroller.dart';
import 'package:campus_connect_app/pages/bus_schedule/buspage.dart';
import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';

class aboutwelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            /* Image.asset(
              "assets/aboutwelcome.png",
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),*/
            // Image.asset(
            //   "assets/gpa7.png",
            //  fit: BoxFit.cover,
            // ),
            Container(
              width: MediaQuery.of(context)
                  .size
                  .width, // Set the width to the phone's width
              child: Image.asset(
                "assets/aboutwelcome.jpg",
                height: MediaQuery.of(context).size.height * 0.55,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 0),

            GestureDetector(
              onTap: () {},
              child: const Text(
                "Welcome to about us",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 76, 55),
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),

            GestureDetector(
              onTap: () {},
              child: const Text(
                "we're passionate about creating cutting-edge solutions that simplify your life. Our team of dedicated professionals is here to serve you.",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
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
                                builder: (context) => aboutController()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "SEE US",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
