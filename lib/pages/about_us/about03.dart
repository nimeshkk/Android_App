import 'package:flutter/material.dart';

class AboutUsScreenthree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('About Us'),
      ),*/
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/aboutus03.png'), // Replace with your image asset path
                fit: BoxFit.cover, // Adjust the fit property as needed
              ),
            ),
          ),
          // Green Box with White Text
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Container(
              //  decoration:
              //  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 300,

              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color.fromARGB(223, 4, 96, 85),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi,    Im J.L.N.Kavinda',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Welcome to my profile! Im a Computer Science enthusiast studying at NSBM Green University, with a strong passion for Software Development.I chose to specialize in Software Development because it allows me to blend creativity and logic to craft digital solutions that solve real-world problems. From mobile apps to web platforms, Im dedicated to creating software that is user-friendly, efficient, and impactful.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
