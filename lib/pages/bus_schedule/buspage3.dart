import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 252, 255),
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 4, 100, 160),
        // shadowColor: const Color.fromARGB(6, 36, 192, 240),
        title: const Text(
          "Private Bus Information",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 24, color: Color.fromARGB(255, 0, 0, 0)),
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
            // footer
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 2,
              width: 500,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 23, 23, 23)),
            ),

            const SizedBox(
              height: 10,
            ),
            const Text(
              "Contact Information",
              style: TextStyle(
                  // Aligns the text to the left
                  color: Color.fromARGB(255, 31, 31, 31),
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
                  color: Color.fromARGB(255, 7, 7, 7),
                  fontSize: 10,
                  fontWeight: FontWeight.w300),
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
                          color: const Color.fromARGB(255, 140, 189, 229)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 80, 164, 233)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 4, 134, 239)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 4, 88, 156)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 2, 53, 94)),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
