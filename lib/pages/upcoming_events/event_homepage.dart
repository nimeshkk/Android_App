import 'dart:async';
import 'package:campus_connect_app/pages/home2.dart';
import 'package:campus_connect_app/pages/upcoming_events/user/calender_eventlist.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Event(),
    );
  }
}

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  bool isAdmin = true; // Set this to false if the user is not an admin

  final List<String> imagePaths = [
    'assets/fiesta01.png',
    'assets/fiesta02.png',
    'assets/praana.png',
    'assets/praana02.png',

    // Add more image paths here
  ];

  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const Duration slideDuration = Duration(seconds: 3);
    _timer = Timer.periodic(slideDuration, (timer) {
      setState(() {
        _currentPage = (_currentPage + 1) % imagePaths.length;
      });
    });
  }

  void _navigateToPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (_) =>
              CalendarScreen()), // Use the correct class name (capitalize the first letter)
    );
    /*else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => EventsPage(
                  events: [],
                )), // Use the correct class name (capitalize the first letter)
      );
    }*/
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                MaterialPageRoute(
                    builder: (_) =>
                        Home2()), // Use the correct class name (capitalize the first letter)
              );
            },
          ),
          title: Text('Events'),
        ),
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/fiesta01.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),

          /*child: CarouselSlider.builder(
              itemCount: imagePaths.length,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                  width: 1500,
                );
              },
            ),*/

          //this is the second part
          Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/back.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 40), // Adjust the top padding as needed

                    // Wrap the Text widget with Center widget
                    child: Text(
                      'Discover upcoming events, effortlessly.',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  Text(
                    'Stay updated with exciting upcoming events in our university!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        //no logic more for the go away
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                      ),
                      child: Text(
                        'Go Away',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromRGBO(3, 169, 244, 1),
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Replace the ElevatedButton section in the _EventState build method
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 20), // Add some spacing between buttons
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => CalendarScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(64, 223, 64, 0.665),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                          ),
                          icon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 0, 28, 75),
                            size: 30,
                          ),
                          label: Text(
                            'Proceed',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ]));
  }
}
