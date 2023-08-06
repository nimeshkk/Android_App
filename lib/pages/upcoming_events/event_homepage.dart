import 'dart:async';
import 'package:campus_connect_app/pages/upcoming_events/user/addevent.dart';
import 'package:campus_connect_app/pages/upcoming_events/user/eventdetails.dart';
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
  final List<String> welcomeMessages = [
    'Welcome to Campus Connect!',
    'Stay connected with events!',
    'Discover exciting opportunities',
  ];

  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const Duration slideDuration = Duration(seconds: 5);
    _timer = Timer.periodic(slideDuration, (timer) {
      setState(() {
        _currentPage = (_currentPage + 1) % imagePaths.length;
      });
    });
  }

  void _navigateToPage() {
    if (isAdmin) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) =>
                addevent()), // Use the correct class name (capitalize the first letter)
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) =>
                eventdetails()), // Use the correct class name (capitalize the first letter)
      );
    }
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
                      WelcomPage()), // Use the correct class name (capitalize the first letter)
            );
          },
        ),
        title: Text('Events'),
      ),
      backgroundColor: Color.fromARGB(255, 171, 197, 219),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: CarouselSlider.builder(
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
                  width: 1000,
                );
              },
            ),
          ),

          Container(
            height: 35,
            color: Colors.green,
            child: CarouselSlider.builder(
              itemCount: welcomeMessages.length,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  // We don't need to do anything here as we are not using the index.
                },
              ),
              itemBuilder: (context, index, realIndex) {
                return Center(
                  child: Text(
                    welcomeMessages[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),

          //this is the second part
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/fiesta02.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover upcoming events, effortlessly.',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Go Away',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              eventdetails()), // Use the correct class name (capitalize the first letter)
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text(
                    'i am a user',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              addevent()), // Use the correct class name (capitalize the first letter)
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text(
                    'i am an admin ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
