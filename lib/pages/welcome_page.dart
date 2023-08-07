import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({key});

  @override
  _WelcomPageState createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            tileMode: TileMode.clamp,
            colors: [
              Color.fromARGB(255, 25, 25, 250), // Blue
              Color.fromARGB(255, 50, 90, 250), // Blue
              Color.fromARGB(255, 75, 129, 254), // Blue
              Color.fromARGB(255, 120, 168, 250), // Blue
              Color.fromARGB(255, 152, 207, 251), // Blue
              Color.fromARGB(255, 183, 227, 253), // Blue
              Color.fromARGB(255, 226, 245, 250), // Blue
              Color.fromARGB(255, 255, 255, 255), // Blue
            ],
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 350,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Image.asset('assets/campus.png', width: 820, height: 500),
                  ],
                ),
              ),
              Positioned(
                bottom: 100,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => Home2()),
                      );
                    },
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 55, 184, 23),
                            Color.fromARGB(255, 236, 199, 10)
                          ])),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
