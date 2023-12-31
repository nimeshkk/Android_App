import 'dart:async';
import 'package:campus_connect_app/pages/about_us/aboutuswelcome.dart';
import 'package:campus_connect_app/pages/gpa_pages/gpahome.dart';
import 'package:campus_connect_app/pages/bus_schedule/buspage.dart';
import 'package:campus_connect_app/pages/timetable/time_Home.dart';
import 'package:campus_connect_app/pages/boarding_house/boardinghouse.dart';
import 'package:campus_connect_app/pages/upcoming_events/EVENT/events.dart';
import 'package:campus_connect_app/pages/lostfound_items/lostandfound.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'clubs_and_community.dart';
import 'login/login_screen.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key});

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  bool isAdmin = true;

  final List<String> imagePaths = [
    'assets/NSBM1.png',
    'assets/NSBM2.png',
    'assets/NSBM3.png',
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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 20),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                      );
                    },
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                'Campus Connect',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              child: CarouselSlider.builder(
                itemCount: imagePaths.length,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 22 / 10,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromARGB(234, 216, 215, 215),
                        width: 7.0,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 6.0,
                  ),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    List<String> imagePaths = [
                      'assets/bus.png',
                      'assets/events2.png',
                      'assets/Lost&Foundimg.png',
                      'assets/accommodation.png',
                      'assets/community2.png',
                      'assets/timetable.png',
                      'assets/GPA.png',
                      'assets/about.png'
                    ];

                    String imagePath = imagePaths[index % imagePaths.length];

                    return GestureDetector(
                      onTap: () {
                        if (imagePath == 'assets/GPA.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Gpahome(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/bus.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Buspage(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/events2.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => eventsitem(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/timetable.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => timetable_home(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/community2.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ClubsAndCommunity(),
                            ),
                          );
                        }

                        if (imagePath == 'assets/Lost&Foundimg.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Lostfounditem(),
                            ),
                          );
                        }

                        if (imagePath == 'assets/accommodation.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => BoardingHouseItem(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/about.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => aboutwelcome(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
