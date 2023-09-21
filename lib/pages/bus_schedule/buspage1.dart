import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: const Text(
          "NSBM Shuttle Bus Scheudle",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Color.fromARGB(255, 2, 76, 55)),

        // backgroundColor: const Color.fromARGB(255, 4, 100, 160),
        // shadowColor: const Color.fromARGB(255, 4, 100, 160),
//         title: const Text(
//           "NSBM Shuttle Bus Scheudle",
//           style: TextStyle(
//               fontWeight: FontWeight.w900, fontSize: 24, color: Color.fromARGB(255, 0, 0, 0)),

        ),
        iconTheme: IconThemeData(color: Colors.black),
        // actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
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
            /* ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(223, 5, 119, 106),
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
            ),*/
            // row 2
            const Text(
              "Week Days Time Schedule",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Color.fromARGB(255, 2, 76, 55)),
            ),

            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
                      borderRadius: BorderRadius.circular(10),
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
            //row 3
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 202, 209, 209),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Maakubura to Nsbm ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 13, 1, 42),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white30,
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text(
                            '8.00 AM',
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

            //row 4
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 202, 209, 209),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        ' Nsbm to Maharagama ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 13, 1, 42),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white30,
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text(
                            '3.30 PM',
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
            //row 5
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 202, 209, 209),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Nsbm to kottawa ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 13, 1, 42),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white30,
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text(
                            '5.10 PM',
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

            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 202, 209, 209),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Nsbm to Nugegoda    (Staff only)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 13, 1, 42),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white30,
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text(
                            '5.45PM',
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

            //row 6 WEEKEND
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Weekend Days Time Schedule",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Color.fromARGB(255, 2, 76, 55)),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
                      borderRadius: BorderRadius.circular(10),
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

            // ROW 7
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 202, 209, 209),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'kottawa to Nsbm ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 13, 1, 42),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white30,
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text(
                            '7.30 AM',
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
            //ROW 8
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 202, 209, 209),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Nsbm to Maharagama ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 13, 1, 42),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white30,
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text(
                            '5.10 PM',
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

            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white30,
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text(
                            '6.00 PM',
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
            // footer

            const SizedBox(
              height: 30,
            ),
            Container(
              height: 2,
              width: 500,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 36, 35, 35)),
            ),

            const SizedBox(
              height: 10,
            ),
            const Text(
              "Contact Information",
              style: TextStyle(
                  // Aligns the text to the left
                  color: Color.fromARGB(255, 23, 22, 22),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.left,
            ),

            const SizedBox(
              height: 10,
            ),
            const Text(
              "Phone: +94-54 456-7890 / Email: info@busscheduling.com ,For any inquiries, feedback, or support related to our bus scheduling service, feel free to reach out to us using the provided contact information. Our team is ready to assist you and address any questions or concerns you may have.Please note that our support hours are Monday to Friday, 9:00 AM to 5:00 PM (local time). If you contact us outside these hours, we will get back to you as soon as possible on the next business day.We value your feedback and suggestions as they help us improve our service and provide you with a better user experience. Thank you for choosing our bus scheduling service.",
              style: TextStyle(
                  color: Color.fromARGB(255, 26, 25, 25),
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
                        color: Color.fromARGB(255, 144, 238, 212)),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 8, 215, 156)),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 4, 163, 118)),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 3, 126, 92)),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 2, 76, 55)),
                  ),
                ],
              ),
            ),
          ], // first child
        ),
      ),
    );
  }
}
