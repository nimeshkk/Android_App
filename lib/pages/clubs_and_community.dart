import 'package:campus_connect_app/pages/Clubs/aiesec.dart';
import 'package:campus_connect_app/pages/Clubs/csse.dart';
import 'package:campus_connect_app/pages/Clubs/drama.dart';
import 'package:campus_connect_app/pages/Clubs/football.dart';
import 'package:campus_connect_app/pages/Clubs/foss.dart';
import 'package:campus_connect_app/pages/Clubs/ieee.dart';
import 'package:campus_connect_app/pages/Clubs/music.dart';
import 'package:campus_connect_app/pages/Clubs/stemup.dart';
import 'package:flutter/material.dart';

class ClubsAndCommunity extends StatefulWidget {
  const ClubsAndCommunity({Key? key}) : super(key: key);

  @override
  State<ClubsAndCommunity> createState() => _ClubsAndCommunityState();
}

class _ClubsAndCommunityState extends State<ClubsAndCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Clubs And Community",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Color.fromARGB(255, 2, 76, 55),
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                    ),
                    SizedBox(height: 30),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 6.0,
                            mainAxisSpacing: 6.0,
                          ),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            List<String> imagePaths = [
                              'assets/sup.jpeg',
                              'assets/IEEE.jpeg',
                              'assets/aiesec.png',
                              'assets/csse.jpg',
                              'assets/foss.png',
                            ];

                            String imagePath =
                                imagePaths[index % imagePaths.length];

                            return GestureDetector(
                              onTap: () {
                                if (imagePath == 'assets/sup.jpeg') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => StemUp(),
                                    ),
                                  );
                                }
                                if (imagePath == 'assets/IEEE.jpeg') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => IEEE(),
                                    ),
                                  );
                                }
                                if (imagePath == 'assets/music.png') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => Music(),
                                    ),
                                  );
                                }
                                if (imagePath == 'assets/drama.png') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => Drama(),
                                    ),
                                  );
                                }
                                if (imagePath == 'assets/foss.png') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => FOSS(),
                                    ),
                                  );
                                }
                                if (imagePath == 'assets/football.jpeg') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => FootBall(),
                                    ),
                                  );
                                }
                                if (imagePath == 'assets/aiesec.png') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => Aisec(),
                                    ),
                                  );
                                }
                                if (imagePath == 'assets/csse.jpg') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => CSSE(),
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(right: 10, top: 10),
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
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
            ),
          ),
        ],
      ),
    );
  }
}
