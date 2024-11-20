import 'package:campus_connect_app/pages/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Controller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalkthroughScreen(),
    );
  }
}

class WalkthroughScreen extends StatefulWidget {
  @override
  _WalkthroughScreenState createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
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
      if (currentPage < 2) {
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
        Expanded(
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: [
              SliderOne(),
              SliderTwo(),
              SliderThree(),
            ],
          ),
        ),
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
                if (currentPage < 2)
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
      ],
    ));
  }
}

class SliderOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/slider01.png'), // Replace with image path
            fit: BoxFit
                .cover, // use different BoxFit values depending on your layout requirements
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 180.0), // Adjust margin as needed
                child: Text(
                  'Explore clubs, housing options, and more to enhance your university journey',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    color: Color.fromARGB(255, 2, 98, 95),
                  ),
                ),
              ),
              /* ElevatedButton(
                onPressed: () {
                  // Move to the next slide or navigate to the next screen
                },
                child: Text('Next'),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

class SliderTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/slider02.png'), // Replace with image path
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 180.0), // Adjust margin as needed
              child: Text(
                'Simplify your university experience with our app\'s helpful features',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  color: Color.fromARGB(255, 2, 98, 95),
                ),
              ),
            ),
            /* ElevatedButton(
              onPressed: () {
                // Move to the next slide or navigate to the next screen
              },
              child: Text('Next'),
            ),*/
          ],
        ),
      ),
    );
  }
}

class SliderThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/slider03.png'), 
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 180.0), // Adjust margin as needed
              child: Text(
                'Keep track of bus schedules, classes, and events effortlessly',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  color: Color.fromARGB(255, 2, 98, 95),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.end, 
                children: [
                  ElevatedButton(
                    onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                       builder: (context) => LoginScreen()),
                   );
                  },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 4, 113, 140),
                      minimumSize: Size(150, 50),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white, // Set text color here
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
