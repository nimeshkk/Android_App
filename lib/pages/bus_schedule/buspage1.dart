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
          ], // first child
        ),
      ),
    );
  }
}
