import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 248),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 100, 160),
        shadowColor: const Color.fromARGB(255, 4, 100, 160),
        title: const Text(
          "NSBM Shuttle Bus Scheudle",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 230,
              width: double.infinity,
              child: AnotherCarousel(
                images: const [
                  AssetImage("assets/bus6.jpeg"),
                  AssetImage("assets/bus1.jpeg"),
                  AssetImage("assets/bus4.jpeg"),
                  AssetImage("assets/bus5.jpeg"),

                  // we have display image from netwrok as well
                  // NetworkImage(
                  // "https://i.cbc.ca/1.3907772.1565385567!/fileImage/httpImage/image.JPG_gen/derivatives/16x9_780/transit.JPG")
                ],
                dotSize: 6,
                indicatorBgPadding: 5.0,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Color.fromARGB(255, 16, 17, 17),
                child: Row(
                  children: [
                    //row 1
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage("assets/weekdays.png"),
                        width: 300,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // row 2

            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 202, 209, 209),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Nugegoda to Nsbm    (Staff only)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 13, 1, 42),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white30,
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text(
                            '7.00 AM',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 15, 1, 57),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ], // first child
        ),
      ),
    );
  }
}
