import 'package:flutter/material.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: const Text(
          "Bus Schedule",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Color.fromARGB(255, 2, 76, 55)),
        ),
        // actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
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
                // textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 76, 55),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
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
                height: 10,
              ),
              const Text(
                "Apart from public and private transport services, a limited shuttle service is available during the peak hours between High-Level Road and NSBM Green University.These buses provide transport to students at affordable rates in a pre-defined schedule.The limited shuttle service between High-Level Road and NSBM Green University is a convenient and affordable transportation option exclusively designed for students during peak hours. This service aims to cater to the transportation needs of the students, ensuring they can easily commute between these two locations for their academic pursuits.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 26, 25, 25),
                    fontWeight: FontWeight.w600),
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
                      color: const Color.fromARGB(223, 5, 119, 106),
                    ),
                    child: const Text(
                      "Shuttle bus timetable",
                      style: TextStyle(color: Colors.white),
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
                    color: Color.fromARGB(255, 2, 76, 55),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),

              Center(
                child: Image.asset(
                  "assets/ctb.png",
                  height: 300,
                  scale: 2,
                ),
              ),
              const Text(
                "The NSBM CTB (Ceylon Transport Board) bus service is a collaborative initiative between NSBM Green University and the Sri Lanka Transport Board (CTB) to provide efficient and reliable transportation for students and staff. This service aims to facilitate easy commuting to and from the university campus, enhancing accessibility and connectivity for the NSBM community.Overall, the NSBM CTB bus service plays a crucial role in providing a convenient, cost-effective, and eco-friendly transportation solution for students and staff, fostering a well-connected and accessible environment at NSBM Green University.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 21, 20, 20),
                    fontWeight: FontWeight.w600),
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
                            223, 5, 119, 106)), // all side padding

                    child: const Text(
                      "CTB bus time table",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              // third screen

              const SizedBox(
                height: 50,
              ),

              const Text(
                "Private bus service",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 76, 55),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Center(
                child: Image.asset(
                  "assets/private.png",
                  height: 300,
                  scale: 1,
                ),
              ),
              const Text(
                "Targeted transportation services for NSBM University encompass both monthly paid and daily paid buses, catering to the commuting needs of students, staff, and faculty members. These services are designed to offer convenient and reliable transportation options for individuals traveling to and from the university or any other desired locations.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 14, 14),
                    fontWeight: FontWeight.w600),
              ),

              const SizedBox(
                height: 30,
              ),
              // button 03

              GestureDetector(
                // BUTTON FUNCTION WRITE CAN HERE
                onTap: () {
                  // Navigate to Page1 when Button is pressed
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return Page3();
                  }));
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(
                            223, 5, 119, 106)), // all side padding

                    child: const Text(
                      "private bus details",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // footer
              Container(
                height: 2,
                width: 500,
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 17, 17, 17)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Contact Information",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 76, 55),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),

              const SizedBox(
                height: 10,
              ),
              const Text(
                "Phone: +94-54 456-7890 / Email: info@busscheduling.com ,For any inquiries, feedback, or support related to our bus scheduling service, feel free to reach out to us using the provided contact information. Our team is ready to assist you and address any questions or concerns you may have.Please note that our support hours are Monday to Friday, 9:00 AM to 5:00 PM (local time). If you contact us outside these hours, we will get back to you as soon as possible on the next business day.We value your feedback and suggestions as they help us improve our service and provide you with a better user experience. Thank you for choosing our bus scheduling service.",
                style: TextStyle(
                    color: Color.fromARGB(255, 23, 22, 22),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, // devide the space between each an every item
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 15, 252, 185)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 10, 181, 132)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 7, 148, 108)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 4, 105, 76)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 2, 76, 55)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
