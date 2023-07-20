import 'package:campus_connect_app/pages/add_pages/add_item.dart';
import 'package:campus_connect_app/pages/bus-shedule.dart';
import 'package:flutter/material.dart';
import 'welcome_page.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key});

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
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
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
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
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    List<String> imagePaths = [
                      'assets/bus.jpg',
                      'assets/events.jpg',
                      'assets/Lost.jpg',
                      'assets/accomadation.jpg',
                      'assets/community.png',
                      'assets/Time-Table.png'
                      
                    ];

                    String imagePath = imagePaths[index % imagePaths.length];

                    return GestureDetector(
                      onTap: () {
                        if (imagePath == 'assets/bus.jpg') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AddPage(),
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
