import 'dart:async';

import 'package:campus_connect_app/pages/bus-shedule.dart';
import 'package:campus_connect_app/pages/upcoming_events/event_homepage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'clubs_and_community.dart';
import 'welcome_page.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key});

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
   bool isAdmin = true; // Set this to false if the user is not an admin

  final List<String> imagePaths = [
      'assets/NSBM.jpg',
      'assets/NSBM.jpg',
      'assets/NSBM.jpg',
     
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
                        MaterialPageRoute(builder: (_) => WelcomPage()),
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
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    List<String> imagePaths = [
                      'assets/bus.png',
                      'assets/events2.png',
                      'assets/Lost2.png',
                      'assets/accommodation.png',
                      'assets/community2.png',
                      'assets/timetable.png'
                    ];

                    String imagePath = imagePaths[index % imagePaths.length];

                    return GestureDetector(
                      onTap: () {
                        if (imagePath == 'assets/bus.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Bus(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/events2.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Event(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/community2.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>  ClubsAndCommunity(),
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
