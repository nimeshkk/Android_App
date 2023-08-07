import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'buspage1.dart';
import 'buspage2.dart';
import 'buspage3.dart';

class Buspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //debugShowCheckedModeBanner: false,
    // title: "bus shudelling",
    // home:
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 246),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 100, 160),
        shadowColor: const Color.fromARGB(255, 14, 8, 172),
        title: const Text(
          "Bus Schedule",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        // wrap with using this the aplication can scroll down
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // get the text in rigth hand side
            children: [
              const Text(
                "NSBM Shuttle bus service",
                style: TextStyle(
                    color: Color.fromARGB(255, 26, 24, 24),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height:
                    30, // to get space between image and topics like text and image
              ),
              Center(
                child: Image.asset(
                  "assets/shuttle-bus-main-image1.jpg",
                  height: 300,
                  scale: 2,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Apart from public and private transport services, a limited shuttle service is available during the peak hours between High-Level Road and NSBM Green University.These buses provide transport to students at affordable rates in a pre-defined schedule.The limited shuttle service between High-Level Road and NSBM Green University is a convenient and affordable transportation option exclusively designed for students during peak hours. This service aims to cater to the transportation needs of the students, ensuring they can easily commute between these two locations for their academic pursuits.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 26, 25, 25),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              // button 01

              GestureDetector(
                onTap: () {
                  // Navigate to Page1 when Button is pressed
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return Page1();
                  }));
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 121, 186, 239),
                    ),
                    child: const Text(
                      "Shuttle bus timetable",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              // second screeen

              const SizedBox(
                height: 50,
              ),

              const Text(
                "NSBM CTB bus service",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),

              Center(
                child: Image.asset(
                  "assets/ctb.jpg",
                  height: 300,
                  scale: 2,
                ),
              ),
              const Text(
                "The NSBM CTB (Ceylon Transport Board) bus service is a collaborative initiative between NSBM Green University and the Sri Lanka Transport Board (CTB) to provide efficient and reliable transportation for students and staff. This service aims to facilitate easy commuting to and from the university campus, enhancing accessibility and connectivity for the NSBM community.Overall, the NSBM CTB bus service plays a crucial role in providing a convenient, cost-effective, and eco-friendly transportation solution for students and staff, fostering a well-connected and accessible environment at NSBM Green University.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 21, 20, 20),
                    fontWeight: FontWeight.w400),
              ),

              const SizedBox(height: 30),
              // button 02
              GestureDetector(
                // BUTTON FUNCTION WRITE CAN HERE
                onTap: () {
                  // Navigate to Page1 when Button is pressed
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return Page2();
                  }));
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(
                            255, 121, 186, 239)), // all side padding

                    child: const Text(
                      "CTB bus time table",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
