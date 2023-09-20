import 'package:campus_connect_app/pages/timetable/timetable_home.dart';
import 'package:flutter/material.dart';

import 'package:campus_connect_app/pages/home2.dart';

class timetable_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/timehome.png",
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 0),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Welcome to TimeTable Platform",
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
                "Presenting the TimeTable Platform in all its elegance and functionality.",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 76, 55),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
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
                            builder: (context) => Timetable(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Find your lecture times",
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
