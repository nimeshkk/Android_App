/*import 'dart:async';
import 'package:campus_connect_app/pages/home2.dart';
import 'package:campus_connect_app/pages/upcoming_events/user/calender_eventlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        builder: (_) => CalendarScreen(),
      ),
    );
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
        flexibleSpace: Container(),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Home2(),
              ),
            );
          },
        ),
        title: Text(
          'Events',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Color.fromARGB(255, 2, 76, 55),

//         appBar: AppBar(
//           // flexibleSpace: Container(
//           //   // decoration: BoxDecoration(
//           //   //   gradient: LinearGradient(
//           //   //     colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
//           //   //     begin: Alignment.topCenter,
//           //   //     end: Alignment.bottomCenter,
//           //   //   ),
//           //   // ),
//           // ),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (_) =>
//                         Home2()), // Use the correct class name (capitalize the first letter)
//               );
//             },

          ),
        ),
        backgroundColor: Colors.white,

      ),
      body: ListView(
        children: <Widget>[
          // Static image instead of the image slider
          Padding(
            padding:
                EdgeInsets.only(top: 70), // Adjust the top padding as needed
            child: Container(
              height: 220,
              child: Image.asset(
                'assets/praana.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // This is the second part
          Container(
            height:
                MediaQuery.of(context).size.height * 0.4, // Reduce the height
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 40,
                  ), // Adjust the top padding as needed

                  // Wrap the Text widget with Center widget
                  child: Text(
                    'Discover upcoming events, effortlessly.',

//         body: ListView(children: <Widget>[
        
          
//           Container(
            
//             height: 250,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                     'assets/fiesta01.png'), // Replace with your image path
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           /*child: CarouselSlider.builder(
//               itemCount: imagePaths.length,
//               options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 16 / 9,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _currentPage = index;
//                   });
//                 },
//               ),
//               itemBuilder: (context, index, realIndex) {
//                 return Image.asset(
//                   imagePaths[index],
//                   fit: BoxFit.cover,
//                   width: 1500,
//                 );
//               },
//             ),*/

//           //this is the second part
//           Container(
            
//               height: MediaQuery.of(context).size.height * 0.7,
//               alignment: Alignment.center,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(
//                         top: 40), // Adjust the top padding as needed

//                     // Wrap the Text widget with Center widget
//                     child: Text(
//                       'Discover upcoming events, effortlessly.',
//                       style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
                        
//                         fontFamily: 'Roboto',
//                       ),
//                     ),
//                   ),
//                   Text(
//                     'Stay updated with exciting upcoming events in our university!',
//                     textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,

                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Text(
                  'Stay updated with exciting upcoming events in our university!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: 'Roboto',

//                       fontWeight: FontWeight.bold,
        
//                       fontFamily: 'Roboto',
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     // child: ElevatedButton(
//                     //   onPressed: () {
//                     //     //no logic more for the go away
//                     //   },
//                     //   style: ElevatedButton.styleFrom(
//                     //     backgroundColor: Colors.black,
//                     //     padding:
//                     //         EdgeInsets.symmetric(horizontal: 130, vertical: 10),
//                     //   ),
//                     //   child: Text(
//                     //     'Go Away',
//                     //     style: TextStyle(
//                     //       fontSize: 18,
//                     //       color: Color.fromARGB(255, 255, 255, 255),
//                     //       fontFamily: 'Roboto',
//                     //     ),
//                     //   ),
//                     // ),

                  ),
                ),
                const SizedBox(height: 20), // Reduce the height
                // Login button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 5, // Reduce the vertical padding
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          color: Color.fromARGB(223, 5, 119, 106),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CalendarScreen(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Proceed",
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
                // Register button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 5, // Reduce the vertical padding
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(223, 5, 119, 106),
                            ),
                            borderRadius: BorderRadius.circular(8),

//                           icon: Icon(
//                             Icons.person,
//                             color: Color.fromARGB(255, 254, 254, 254),
//                             size: 30,

                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home2(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Go back",
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
        ],
      ),
    );

//                 ],
//               )
//               ),
//         ]
//         )
//         );

  }
}
*/