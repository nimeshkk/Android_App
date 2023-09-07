import 'package:flutter/material.dart';

class Sliderone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/slider01.png'), // Replace with your image path
              fit: BoxFit
                  .cover, // You can use different BoxFit values depending on your layout requirements
            ),
          ),
          child: Center(
            // Your other widgets can be placed here on top of the background image
            child: Center(
              child: Container(
                alignment:
                    Alignment.centerLeft, // Align content to the center-right
                margin: EdgeInsets.only(left: 180.0), // Adjust margin as needed
                child: Text(
                  'Explore clubs, housing options, and more to enhance your university journey',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 2, 98, 95),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
