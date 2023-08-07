import 'package:flutter/material.dart';
import 'home2.dart';

class ClubsAndCommunity extends StatefulWidget {
  const ClubsAndCommunity({Key? key}) : super(key: key);

  @override
  State<ClubsAndCommunity> createState() => _ClubsAndCommunityState();
}

class _ClubsAndCommunityState extends State<ClubsAndCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x8000FF00), Color(0xff281537)])),
          child: const Padding(
            padding: EdgeInsets.only(top: 60.0, left: 22),
            child: Text(
              'Clubs And Community',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                children: [
                  // Container(
                  //   padding: const EdgeInsets.only(top: 0, left: 20),
                  //   child: Row(

                  //       ),
                  // ),
                  SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                  ),
                  SizedBox(height: 30),
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
                            'assets/sup.jpeg',
                            'assets/IEEE.jpeg',
                            'assets/aiesec.png',
                            'assets/csse.jpg',
                            'assets/music.png',
                            'assets/drama.png',
                            'assets/foss.png',
                            'assets/football.jpeg',
                          ];

                          String imagePath =
                              imagePaths[index % imagePaths.length];

                          return GestureDetector(
                            onTap: () {
                              // if (imagePath == 'assets/bus.jpg') {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (_) => Bus(),
                              //     ),
                              //   );
                              // }
                              // if (imagePath == 'assets/events.jpg') {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (_) => Event(),
                              //     ),
                              //   );
                              // }
                              // if (imagePath == 'assets/community.png') {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (_) => ClubsAndCommunity(),
                              //     ),
                              //   );
                              // }
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
          ),
        )
      ]),
    );
  }
}
