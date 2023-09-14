import 'package:flutter/material.dart';

class AboutUsScreensix extends StatelessWidget {
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
                    'assets/aboutus01.png'), // Replace with your image asset path
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
              height: 250,

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
                    'Hi,    Im D.S.Sathsarani',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ever since I embarked on my journey as a Computer Science student, Ive been fueled by a passion for crafting innovative software solutions. The world of programming and development is my playground, and I thrive on turning complex ideas into user-friendly applications.',
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
