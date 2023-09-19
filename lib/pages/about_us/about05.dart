import 'package:flutter/material.dart';

class AboutUsScreentwo extends StatelessWidget {
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
                    'assets/aboutus02.png'), // Replace with your image asset path
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
                    'Hi,    Im W.N.A.Chathuka Upamith',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Welcome to my profile! Im a Computer Science enthusiast studying at NSBM Green University, with a strong passion for Software Development.Ever since I embarked on my journey as a Computer Science student, Ive been captivated by the art of coding. I believe that software has the power to transform the world, and Im excited to be a part of this dynamic field.',
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
