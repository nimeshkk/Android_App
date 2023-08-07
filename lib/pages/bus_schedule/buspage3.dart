import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 252, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 100, 160),
        shadowColor: const Color.fromARGB(6, 36, 192, 240),
        title: const Text(
          "Private Bus Information",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const SizedBox(
            //  height: 15,
            //   ),
            SizedBox(
              height: 230,
              width: double.infinity,
              child: AnotherCarousel(
                images: const [
                  AssetImage("assets/private.png"),
                  AssetImage("assets/private5.jpg"),
                  AssetImage("assets/private3.jpeg"),
                  AssetImage("assets/private2.jpeg"),

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
            //row 1

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 214, 218, 219),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage("assets/van1.jpg"),
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        ' Saman Transport.journey begins at Ja-Ela, providing a convenient starting point for easy accessibility.As we traverse through Ganemulla,.our route  enters the highway at Kadawatha.  please contact us at [Contact Number]',
                        style: TextStyle(
                          fontSize: 12,
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
                            '0784645698',
                            style: TextStyle(
                              fontSize: 12,
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
            // row 2

            const SizedBox(
              height: 15,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 214, 218, 219),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage("assets/van2.png"),
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        ' janindu Transport.journey begins at chilaw, providing a convenient starting point for easy accessibility.As we traverse through negombo main road,.our route  enters the highway at Katunayaka.  please contact us at [Contact Number]',
                        style: TextStyle(
                          fontSize: 12,
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
                            '0720221458',
                            style: TextStyle(
                              fontSize: 12,
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
            //row 3

            const SizedBox(
              height: 15,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 214, 218, 219),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage("assets/bus3.jpeg"),
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        ' Mark Transport.journey begins at Moratuwa, providing a convenient starting point for easy accessibility.As we traverse through  main road,.our route  enters the highway at colombo.  please contact us at [Contact Number]',
                        style: TextStyle(
                          fontSize: 12,
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
                            '0784512387',
                            style: TextStyle(
                              fontSize: 12,
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
            // row 4
            const SizedBox(
              height: 15,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 214, 218, 219),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage("assets/bus7.jpg"),
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        ' Tushara Transport.journey begins at Bandaragama, providing a convenient starting point for easy accessibility.As we traverse through  main road,.our route  enters the highway at colombo.  please contact us at [Contact Number]',
                        style: TextStyle(
                          fontSize: 12,
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
                            '0715478961',
                            style: TextStyle(
                              fontSize: 12,
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
          ],
        ),
      ),
    );
  }
}
