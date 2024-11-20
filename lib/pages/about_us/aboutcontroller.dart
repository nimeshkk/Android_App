import 'package:campus_connect_app/pages/about_us/about01.dart';
import 'package:campus_connect_app/pages/about_us/about06.dart';
import 'package:campus_connect_app/pages/about_us/about02.dart';
import 'package:campus_connect_app/pages/about_us/about03.dart';
import 'package:campus_connect_app/pages/about_us/about04.dart';
import 'package:campus_connect_app/pages/about_us/about05.dart';
import 'package:campus_connect_app/pages/home2.dart';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:campus_connect_app/pages/home2.dart';

//import '../sliders/sliders.dart';

class aboutController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: aboutthroughScreen(),
    );
  }
}

class aboutthroughScreen extends StatefulWidget {
  @override
  _aboutthroughScreenState createState() => _aboutthroughScreenState();
}

class _aboutthroughScreenState extends State<aboutthroughScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start the auto-slide timer
    _startAutoSlide();
  }

  void _startAutoSlide() {
    // Cancel the previous timer if it exists
    _timer?.cancel();
    // Create a new timer that advances the page every 1 second
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentPage < 6) {
        _controller.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        // If we're at the last page, cancel the timer
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 20, // Set a fixed height for the container
          color: Colors.white, // Make the container transparent
          child: Align(
            alignment: Alignment.centerLeft, // Align the content to the left
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentPage > 0)
                  Opacity(
                    opacity: 0.0, // Make the button transparent
                    child: ElevatedButton(
                      onPressed: () {
                        _controller.previousPage(
                          duration: Duration(milliseconds: 60),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        'Previous',
                        style: TextStyle(
                          color: Color.fromARGB(
                              255, 4, 140, 101), // Set text color here
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ), // Change the color here
                    ),
                  ),
                if (currentPage < 6)
                  Opacity(
                    opacity: 0.0, // Make the button transparent
                    child: ElevatedButton(
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color.fromARGB(
                              255, 4, 140, 101), // Set text color here
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ), // Change the color here
                    ),
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: [
              AboutUsScreenone(),
              AboutUsScreenthree(),
              AboutUsScreenfour(),
              AboutUsScreenfive(),
              AboutUsScreensix(),
              AboutUsScreentwo(),
              const Home2(),
            ],
          ),
        ),
        /* Container(
          height: 20, // Set a fixed height for the container
          color: Colors.white, // Make the container transparent
          child: Align(
            alignment: Alignment.centerLeft, // Align the content to the left
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentPage > 0)
                  Opacity(
                    opacity: 0.0, // Make the button transparent
                    child: ElevatedButton(
                      onPressed: () {
                        _controller.previousPage(
                          duration: Duration(milliseconds: 60),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        'Previous',
                        style: TextStyle(
                          color: Color.fromARGB(
                              255, 4, 140, 101), // Set text color here
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ), // Change the color here
                    ),
                  ),
                if (currentPage < 5)
                  Opacity(
                    opacity: 0.0, // Make the button transparent
                    child: ElevatedButton(
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color.fromARGB(
                              255, 4, 140, 101), // Set text color here
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ), // Change the color here
                    ),
                  ),
              ],
            ),
          ),
        ),*/
      ],
    ));
  }
}
